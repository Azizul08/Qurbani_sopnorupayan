<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use Session;
use App\Shipping;
use App\Order;
use App\Payment;
use App\OrderDetail;
use Cart;
use Mail;

use Illuminate\Support\Facades\DB;
// use Auth;


class CheckoutController extends Controller {

    public function index() {
        return view('frontEnd.checkout.checkoutContent');
    }


    public function getLogin(Request $request)
    {
        if(auth()->guard('customer')->check()){
            return redirect('/');
        }

        // return view('/checkout');
        else
        {
            return redirect()->back()->withErrors(['msg'=>'Email or password is incorrect'])->withInput();

        }
    }

    public function customerlogin(Request $request) {
    
    // dd($request->emailAddress);
    $info=DB::table('customers')->where('emailAddress',$request->emailAddress)->first();
    // dd($info);

    $customerId = $info->id;
    Session::put('customerId', $customerId);
     
     // dd($info);
    // $pass=$info->password;
    
    // dd($pass);
    $credentials = $request->only('emailAddress', 'password');

         
    // dd($credentials);
         if(auth()->guard('customer')->attempt($credentials, $request->has('remember'))) {

           /* if(Auth::user()->usertype=='banned'){
                \Auth::logout();
                return array("errors" => 'You account has been banned!');
            }*/

            return $this->handleUserWasAuthenticated($request);
        }

       // return array("errors" => 'The email or the password is invalid. Please try again.');
        //return redirect('/admin');
       // return redirect('/checkout')->withErrors('The email or the password is invalid. Please try again.');

        else
        {
            return redirect()->back()->withErrors(['msg'=>'Email or password is incorrect'])->withInput();

        }
    }


    protected function handleUserWasAuthenticated(Request $request)
    {

        if (method_exists($this, 'authenticated')) {
            return $this->authenticated($request, Auth::User());
        }

        return redirect('/cart/show'); 
    }

    // logout function
    public function getLogout()
    {
        auth()->guard('customer')->logout();
        Session::flush();
        return redirect('/');
    }


    public function customerRegistration(Request $request) {
        $customer = new Customer();
        $customer->firstName = $request->firstName;
        $customer->lastName = $request->lastName;
        $customer->emailAddress = $request->emailAddress;
        $customer->password = bcrypt($request->password);
        $customer->address = $request->address;
        $customer->phoneNumber = $request->phoneNumber;
        $customer->districtName = $request->districtName;
        $customer->save();
        $customerId = $customer->id;
        Session::put('customerId', $customerId);
        return redirect('/cart/show');
    }

    public function showShippingForm() {
        $customerId = Session::get('customerId');

        // dd($customerId);
        $customerById = Customer::where('id', $customerId)->first();

        return view('frontEnd.checkout.shippingContent', ['customerById' => $customerById]);
    }

    public function saveShippingInfo(Request $request) {
        $shipping = new Shipping();
        $shipping->fullName = $request->fullName;
        $shipping->emailAddress = $request->emailAddress;
        $shipping->address = $request->address;
        $shipping->phoneNumber = $request->phoneNumber;
        $shipping->districtName = $request->districtName;
        $shipping->save();
        $shippingId = $shipping->id;
        Session::put('shippingId', $shippingId);
        return redirect('/checkout/payment');
    }

    public function showPaymentForm() {
        return view('frontEnd.checkout.paymentContent');
    }

    public function saveOrderInfo(Request $request) {
        
        // dd($request);
        
            
        $paymentType = $request->paymentType;
        if ($paymentType == 'cashOnDelivery') {
            $order = new Order();
            $order->customerId = Session::get('customerId');
            $order->shippingId = Session::get('shippingId');
            $order->orderTotal = Session::get('orderTotal');
            $order->save();
            $orderId = $order->id;
            Session::put('orderId', $orderId);
            
            $payment = new Payment();
            $payment->orderId = Session::get('orderId');
            $payment->paymentType = $paymentType;
            $payment->save();


            // $orderDetail = new OrderDetail();
            $cartProducts = Cart::content();
            // dd($cartProducts);
            $data=[];

            foreach ($cartProducts as $cartProduct) {

                // $orderDetail->orderId = Session::get('orderId');
                // $orderDetail->productId = $cartProduct->id;
                // $orderDetail->productName = $cartProduct->name;
                // $orderDetail->productPrice = $cartProduct->price;
                // $orderDetail->productQuantity = $cartProduct->qty;
                // $orderDetail->save();

                $data[] = [
                'orderId' => Session::get('orderId'),
                'productId' => $cartProduct->id,
                'productName' => $cartProduct->name,
                'productPrice' => $cartProduct->price,
                'productQuantity' => $cartProduct->qty
                ];

                 
            }
            // dd($data);
            DB::table('order_details')->insert($data);
            
            // $data = ['foo' => 'sopnorupayan'];
            
            // $user_mail=DB::table('customers')->where('id',Session::get('customerId'))->select('emailAddress')->first();
            // dd($user_mail);
            
            $info=DB::table('customers')->where('id',Session::get('customerId'))->first();
            $user_email = $info->emailAddress;
            
            $data = array(
                'firstname' => $info->firstName,
                'lastname' => $info->lastName,
                'address' => $info->address,
                'phone' => $info->phoneNumber,
                'orderId' => Session::get('orderId'),
                'productId' => $cartProduct->id,
                'productName' => $cartProduct->name,
                'productPrice' => $cartProduct->price,
                'productQuantity' => $cartProduct->qty
                );
                
            $name='Sopnorupayan';
            // $user_mail= 'netcoden113@gmail.com';
            // dd($data);
            Mail::send('frontEnd.emailtemplate',$data, function ($message) use ($user_email,$name) {    
            // $message->from('support@sopnorupayan.com','Company Name');
        	$message->to($user_email,$name)->subject('Your order has been received!');
 		    });
 		    
 		    Mail::send('frontEnd.emailtemplate',$data, function ($message) {
// 			$message->from('support@sopnorupayan.com','Company Name');
// 			$message->to('m.azizulcse@gmail.com ');
			$message->to('ruhulamin.ce.11@gmail.com');
			$message->subject('Client ordered form sopnorupayan.com ');
 		    });
 		    
            // dd('Hello');
            return redirect('/checkout/my-home');
        } else if ($paymentType == 'bkash') {
            return 'Under construction bkash payment type. please use cash on delivary';
        } else if ($paymentType == 'paypal') {
            return 'Under construction paypal payment type. please use cash on delivary';
        }
    }

    public function customerHome() {
        return view('frontEnd.customer.customerHome');
    }

}
