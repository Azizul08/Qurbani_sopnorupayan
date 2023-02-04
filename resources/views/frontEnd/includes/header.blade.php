<style>
.dropbtn {
  background-color: #fda30e;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #c38e37;
}
</style>

<div class="header">
    <div class="container">
        <ul>
            <li><span class="glyphicon glyphicon-time" aria-hidden="true"></span>Free and Fast Delivery</li>
            <li><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Free shipping On all orders</li>
            <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:ruhul@sopnorupayan.com">ruhul@sopnorupayan.com</a></li>
        </ul>
    </div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
    <div class="container">
        <div class="col-md-3 header-left">
            <h1><a href="{{ url('/') }}"><img src="{{ asset('public/frontEnd/images/logo.png') }}"></a></h1>
        </div>
        <div class="col-md-6 header-middle">
            <form>
                <div class="search">
                    <input type="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                this.value = 'Search';
                            }" required="">
                </div>
                <div class="section_room">
                    <select id="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">All categories</option>
                        <option value="null">Qurbani Cow</option>
                        <option value="null">Qurbani Goat</option>
                        <!-- <option value="null">Electronics</option>      -->
                        <!-- <option value="AX">kids Wear</option> -->
                        <!-- <option value="AX">Men's Wear</option> -->
                        <!-- <option value="AX">Women's Wear</option> -->
                        <!-- <option value="AX">Watches</option> -->
                    </select>
                </div>
                <div class="sear-sub">
                    <input type="submit" value=" ">
                </div>
                <div class="clearfix"></div>
            </form>
        </div>
        <div class="col-md-3 header-right">
            <ul>               

                <li><div class="dropdown">
                  <button class="dropbtn">My Account</button>
                  <div class="dropdown-content">
                  <a href="{{url('/userlogin')}}">Login</a>
                  <a href="{{url('/userlogin')}}">Register</a>
                  
                  </div>
                </div>
                </li>
                <!-- <li><a href="#" class="use1" data-toggle="modal" data-target="#myModal4"></a></li> -->
                <!-- <li><a class="fb" href="#"></a></li>
                <li><a class="twi" href="#"></a></li>
                <li><a class="insta" href="#"></a></li>
                <li><a class="you" href="#"></a></li> -->
            </ul>
             
            <!-- <ul>
                <li class="dropdown profile_details_drop">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
                    <div class="mega-dropdown-menu">
                        <div class="w3ls_vegetables">
                            <ul class="dropdown-menu drp-mnu">
                                <li><a href="{{url('/login')}}">Login</a></li> 
                                <li><a href="{{url('/login')}}">Sign Up</a></li>
                            </ul>
                        </div>                  
                    </div>  
                </li>
            </ul> -->
        </div>
        <div class="clearfix"></div>
    </div>
</div>