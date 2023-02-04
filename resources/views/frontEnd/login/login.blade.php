@extends('frontEnd.master')
@section('title')
Login
@endsection

@section('mainContent')

<!-- banner -->
	<div class="banner">
		
		<div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  	<div class="form">
				  	{!! Form::open(['url'=>'/customer/login', 'method'=>'POST',]) !!}
					<h2>Login to your account</h2>
					<!-- <form action="#" method="post"> -->
					{!! Form::open(['url'=>'/customer/login', 'method'=>'POST',]) !!}	
					  <input type="email" name="emailAddress" placeholder="Email Address" required=" ">
					  <input type="password" name="password" placeholder="Password" required=" ">
					  <input type="submit" value="Login">
					{!! Form::close() !!}
					<!-- </form> -->
				  	</div>
				  	<div class="form">
				  	{!! Form::open(['url'=>'/checkout/sign-up', 'method'=>'POST']) !!}
					<h2>Create an account</h2>
					<!-- <form action="#" method="post"> -->
					{!! Form::open(['url'=>'/checkout/sign-up', 'method'=>'POST']) !!}
					  <input type="text" name="firstName" placeholder="Firstname" required=" ">
					  <input type="text" name="lastName" placeholder="Lastname" required=" ">
					  <input type="email" name="emailAddress" placeholder="Email Address" required=" ">
					  <input type="password" name="password" placeholder="Password" required=" ">
					  <input type="text" name="address" placeholder="Address" required=" ">
					  <input type="text" name="phoneNumber" placeholder="Phone Number" required=" ">
					  
                    	<select class="form-control" name="districtName">
                        <option>Select District Name</option>
                        <option value="Dhaka">Dhaka</option>
                        <option value="nar">Narayanganj</option>
                        <option value="Savar">Manikgonj</option>
                        <option value="Barisal">Barisal</option>
                        <option value="Gazipur">Gazipur</option>
                        <option value="Comilla">Comilla</option>
                        <option value="Dhaka">Rajshahi</option>
                        <option value="nar">Gaibandha</option>
                        <option value="Savar">Rangpur</option>
                        <option value="Barisal">Pabna</option>
                        <option value="Gazipur">Bogura</option>
                        <option value="Comilla">Dinazpur</option>
                    	</select>
                	    <br>
					  <input type="submit" value="Register">
					{!! Form::close() !!}
					<!-- </form> -->
				  </div>
				  <div class="cta"><a href="#">Forgot your password?</a></div>
				</div>
			</div>
			<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms  
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
			</script>
		</div>
</div>
		<div class="clearfix"></div>
	</div>

@endsection