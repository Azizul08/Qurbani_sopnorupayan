<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Category;
use App\Product;
use Illuminate\Support\Facades\DB;
class WelcomeController extends Controller
{
    public function index() {
        // dd('Hello');
        $publishedProducts=Product::where('publicationStatus', 1)->get();
        return view('frontEnd.home.homeContent', ['publishedProducts' => $publishedProducts]);
    }
    public function category($id) {
        $publishedCategoryProducts=Product::where('categoryId', $id)
                                                    ->where('publicationStatus', 1)
                                                    ->get();

        $publishedCategories = Category::where('publicationStatus', 1)->where('id',$id)->get();
        // $publishedCategories = DB::table('categories')->where('publicationStatus', 1)
        //                                               ->select('categoryName')
        //                                               ->first();
        // dd($publishedCategories);

        return view('frontEnd.category.categoryContent', ['publishedCategoryProducts'=>$publishedCategoryProducts,'publishedCategories'=>$publishedCategories]);
    }
    public function productDetails($id) {
        $productById=Product::where('id', $id) ->first();
         return view('frontEnd.product.productContent', ['productById'=>$productById]);
    }

    public function contact(){
        return view('frontEnd.home.contact');
    }

    public function login(){
      
     
        return view('frontEnd.login.login');
        
    }

    
}
















