<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active menu__item menu__item--current"><a class="menu__link" href="{{ url('/') }}">Home <span class="sr-only">(current)</span></a></li>
                            @foreach($publishedCategories as $publishedCategory)
                            <li class="active dropdown menu__item">
                                <a href="{{ url('/category-view/'.$publishedCategory->id) }}" class="dropdown-toggle menu__link"> {{ $publishedCategory->categoryName }} </a>
                            </li>
                            @endforeach
                            <li class=" menu__item"><a class="menu__link" href="{{url('/')}}">About Us</a></li>
                            <li class=" menu__item"><a class="menu__link" href="{{url('/contact')}}">contact</a></li>

                            @if(auth()->guard('customer')->check())
                            <li class="dropdown dropdown-toggle menu__item" data-toggle="dropdown"><a class="menu__link" href="#">My Account</a></li>
                            <ul class="dropdown-menu">
                                <li><a href="{{url('/customer/logout')}}">Logout</a></li>
                            </ul>
                            
                            @endif
                        </ul>
                </div>
            </nav>	
        </div>
        <!-- <div class="top_nav_right">
            <div class="cart box_1">
                <a href="{{ url('/cart/show') }}">
                    <h3> <div class="total">
                            <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>

                    </h3>
                </a>
                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

            </div>	
        </div> -->        
        <div class="clearfix"></div>
    </div>   
</div>