
<link rel="stylesheet" href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>

<style>

.hidden-mobile-xs {
    display: inline !important;
}

@media (max-width: 767px){
.hidden-mobile-xs {
    display: none !important;
}}

.rento-affiliate a{

            padding: 10px;
    }


    #pav-mainnav .navbar ul.nav > li > a {
    text-transform: none !important;
    font-size: 16px !important;

}

</style>
<header id="header-main">
<div class="dashboard-header">
    <nav class="navbar navbar-expand-lg bg-white fixed-top theme-color">

    <div class="container-fluid">
    <div class="row">
       <div class="col-md-2">

       <a class="navbar-brand mt-7" href="#">

    <?php if( $logoType=='logo-theme'){ ?>
                    <?php echo $name; ?>

                <?php } elseif ($logo) { ?>

                        <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive lazy-load-image" style=" margin-top: -12px;
    height: 44px;" />

                <?php } ?>
    </a>
       </div>

       <div class="col-md-6">

       <div id="custom-search" class="top-search-bar mt-10">
                    <div class="hidden-sm hidden-xs search " id="search" >
                    <?php echo $search; ?>
                    </div>
       </div>

       </div>


       <div class="col-md-4">

            <div class="pull-right mt-10 mr-28">

                <a target="_blank" href="https://api.whatsapp.com/send?phone=917011898220"><img style="margin-bottom: 3px;" class="nav-link lazy-load-image" src="https://img.icons8.com/color/20/000000/whatsapp.png"></a>


                <span class="vl"></span>
                <div class="dropdown btn-group hidden-mobile-xs">
                <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i></a>


                <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                        <li>
                            <div class="notification-title">More Info</div>
                            <div class="notification-list">
                                <div class="list-group">


                                    <a href="/affiliates" class="list-group-item list-group-item-action active">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="https://img.icons8.com/nolan/100/000000/helping-hand.png" alt="" class="user-avatar-md rounded-circle lazy-load-image"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Affiliate program</span>
                                            </div>
                                        </div>
                                    </a>

                                     <?php if(!$affiliate_logged) { ?>
                                    <a href="/index.php?route=affiliate/login" class="list-group-item list-group-item-action active">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="https://img.icons8.com/nolan/100/000000/helping-hand.png" alt="" class="user-avatar-md rounded-circle lazy-load-image"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Affiliate login/signup</span>
                                            </div>
                                        </div>
                                    </a>

                                     <?php } ?>

                                    <a href="/redemption-center" class="list-group-item list-group-item-action active">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="https://img.icons8.com/bubbles/100/000000/prize.png" alt="" class="user-avatar-md rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Credit redemption store</span>
                                            </div>
                                        </div>
                                    </a>

                                    <a href="/achievements" class="list-group-item list-group-item-action active">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="https://img.icons8.com/ultraviolet/100/000000/medal.png" alt="" class="user-avatar-md lazy-load-image rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Achievements</span>
                                            </div>
                                        </div>
                                    </a>

                                    <a href="/contact-us" class="list-group-item list-group-item-action active">
                                        <div class="notification-info">
                                            <div class="notification-list-user-img"><img src="https://img.icons8.com/bubbles/100/000000/call-female.png" alt="" class="user-avatar-md lazy-load-image rounded-circle"></div>
                                            <div class="notification-list-user-block"><span class="notification-list-user-name">Contact us</span>
                                            </div>
                                        </div>
                                    </a>
                                      </div>
                            </div>
                        </li>

                    </ul>
            </div>
<style>

   .my-cart{
     position: relative;
   }

   .my-cart .dots{

    position: absolute;
    height: 15px;
    width: 15px;
    background-color:red;
    color: #fff;;
    font-size: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    top:7px;
    left:2px;
    border-radius: 50%;
    top: -4px;
    left: 13px;


   }

</style>

                <div style="display:inline !important;">

                <span class="vl hidden-mobile-xs"></span>

                <a class="nav-link my-cart" href="<?php echo $shopping_cart;?>"role="button">
                <i class="fas fa-shopping-cart"></i>
                <span class="dots"><?php echo $cart_items; ?></span>
                </a>

                <span class="vl"></span>

                </div>





                <?php if ($logged && $affiliate_logged ) { ?>

                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="https://img.icons8.com/dusk/100/000000/user-female-circle.png" alt="" class="user-avatar-md rounded-circle lazy-load-image"></a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <div class="nav-user-info">
                            <h5 class="mb-0 text-white nav-user-name"><?php echo $user_name; ?>(<small style="color:#fff;"><?php echo $user_phone; ?></small>)</h5>


                            <h5 class="mb-0 text-white nav-user-name" style="margin-top:5px;">Credits - <?php echo $total; ?></h5>
                        </div>
                        <a class="dropdown-item" href="<?php echo $account; ?>"> <i class="fas fa-user mr-2"></i>Account</a>
                        <?php if($affiliate_logged){ ?>
                            <a class="dropdown-item" href="/index.php?route=affiliate/account"><i class="fas fa-rupee mr-2"></i>My Affiliate Account</a>
                        <?php } ?>
                        <a class="dropdown-item" href="<?php echo $wishlist; ?>"><i class="fas fa-cog mr-2"></i>Wish list</a>
                        <a class="dropdown-item" href="<?php echo $logout; ?>"><i class="fas fa-power-off mr-2"></i><?php echo $text_logout; ?></a>
                    </div>


                    <?php } else if($logged) { ?>


                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="https://img.icons8.com/dusk/100/000000/user-female-circle.png" alt="" class="user-avatar-md rounded-circle lazy-load-image"></a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <div class="nav-user-info">
                            <h5 class="mb-0 text-white nav-user-name"><?php echo $user_name; ?>(<small style="color:#fff;"><?php echo $user_phone; ?></small>)</h5>


                            <h5 class="mb-0 text-white nav-user-name" style="margin-top:5px;">Credits - <?php echo $total; ?></h5>
                        </div>
                        <a class="dropdown-item" href="<?php echo $account; ?>"> <i class="fas fa-user mr-2"></i>Account</a>

                        <a class="dropdown-item" href="<?php echo $wishlist; ?>"><i class="fas fa-cog mr-2"></i>Wish list</a>
                        <a class="dropdown-item" href="<?php echo $logout; ?>"><i class="fas fa-power-off mr-2"></i><?php echo $text_logout; ?></a>
                    </div>




                    <?php } else if($affiliate_logged) { ?>



                    <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="https://img.icons8.com/dusk/100/000000/user-female-circle.png" alt="" class="user-avatar-md lazy-load-image rounded-circle"></a>
                    <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                        <div class="nav-user-info">
                            <h5 class="mb-0 text-white nav-user-name">Hello, <?php echo $affiliate_name; ?></h5><span>(Rentopc affiliate)</span>


                            <!-- <h5 class="mb-0 text-white nav-user-name" style="margin-top:5px;">Reward Points - <?php echo $affiliate_transaction_total; ?></h5> -->
                        </div>

                        <!-- <a class="nav-link nav-user-img" href="#" data-toggle="modal" data-target="#login-modal" ><span class="login" style="color:#000;">LOGIN & SIGNUP</span></a> -->

                         <a class="dropdown-item" href="#" data-toggle="modal" data-target="#login-modal"><i class="fas fa-user mr-2"></i>Login as customer</a>

                        <?php if($affiliate_logged){ ?>
                            <a class="dropdown-item" href="/index.php?route=affiliate/account"><i class="fas fa-rupee mr-2"></i>My Affiliate Account</a>
                        <?php } ?>
                        <a class="dropdown-item" href="/index.php?route=affiliate/transaction"><i class="fas fa-rupee mr-2"></i>Affiliate Transaction</a>
                        <a class="dropdown-item" href="/index.php?route=affiliate/tracking"><i class="fas fa-cog mr-2"></i>Affiliate Tracking</a>
                        <a class="dropdown-item" href="/index.php?route=affiliate/logout"><i class="fas fa-power-off mr-2"></i><?php echo $text_logout; ?></a>
                    </div>




                    <?php } else { ?>


                    <a class="nav-link nav-user-img" href="#" data-toggle="modal" data-target="#login-modal" ><span class="login">SIGNUP</span></a>


                    <?php } ?>


        <div>



       </div>

    </div>
    </div>

    </nav>
</div>

<style>
@media screen and (min-width: 768px){
.modal-dialog {
    left: 0% !important;
    right: auto;
    width: 600px;
    padding-top: 30px;
    padding-bottom: 30px;
}}

.notification-dropdown {
    min-width: 290px
}

.notification-dropdown,
.connection-dropdown,
.nav-user-dropdown {
    padding: 0px;
    margin: 0px
}

.notification-title {
    font-size: 14px;
    color: #3d405c;
    text-align: center;
    padding: 8px 0px;
    border-bottom: 1px solid #e3e3e3;
    line-height: 1.5;
    background-color: #fffffe
}

.notification-list {}

.notification-list .list-group-item {
    border-radius: 0px;
    padding: 12px;
    margin-top: -1px;
    border-left: transparent;
    border-right: transparent
}

.notification-list .list-group-item.active {
    z-index: 2;
    color: #3d405c;
    background-color: #f7f7fb;
    border-color: #e1e1e7
}

.notification-list .list-group-item-action:focus,
.list-group-item-action:hover {
    color: #404040;
    text-decoration: none;
    background-color: #f7f7fb
}

.notification-list .list-group-item:last-child {}

.notification-info {}

.notification-info .notification-date {
    display: block;
    font-size: 11px;
    margin-top: 4px;
    text-transform: uppercase;
    color: #71748d
}

.notification .dropdown-toggle::after,
.connection .dropdown-toggle::after,
.nav-user .dropdown-toggle::after {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: .255em;
    vertical-align: .255em;
    content: "";
    border: none
}

.notification-list-user-img {
    float: left;
    margin-top:-7px;
}

.notification-list-user-block {
    padding-left: 50px;
    font-size: 14px;
    line-height: 21px
}

.notification-list-user-name {
    color: #5969ff;
    font-size: 14px;
    margin-right: 8px
}

.dropdown-menu{

    margin-top: 2px !important;
}



.vl {
  border-left: 1px solid #fff;
  height: 100%;
  margin:10px;
}

.login{

        color: #fff;
}


 .fa-shopping-cart, .fa-bell{
    color:#fff !important;
}

.nav-link{

    padding: 9px 0px !important;
    font-size: 16px;
    line-height: 2;
    color: #82849f;

}
.button-search{
        height: 35px !important;
}

.input-search{
    width: 500px !important;
    height: 37px !important;
}

.mt-10{
    margin-top:10px;
}

.mt-7{
    margin-top:5px;
}

#header-main{
        margin-top: 58px !important;
}

.search {
    position: relative;
    padding: 0 !important;
    width: 225px;
}
/*
@media (min-width: 992px){
.navbar-expand-lg .navbar-nav .dropdown-menu-right {
    right: 0;
    left: auto;
}

.nav-user-dropdown{
        margin-top: 17px !important;
}
}

@media (min-width: 768px){
.navbar-nav {

    margin: 0;

    float: right;
}

}

@media (min-width: 350px){
.navbar-nav {

    margin: 0;

}

}

*/
.fixed-top {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
}

.mr-2{
    margin-right:5px;
}

.bg-white{

    background-color:#fff;
}

.dashboard-header .navbar {
        padding: 0px;
    border-bottom: 1px solid #5967f6;
    -webkit-transition: all 0.3s ease;
    min-height: 60px;
    background-color: #5967f6;
}

.navbar-brand {
    display: inline-block;
    margin-right: 1rem;
    line-height: inherit;
    white-space: nowrap;
    padding: 11px 0px;
    font-size: 30px;
    text-transform: uppercase;
    font-weight: 700;
    color: #007bff
}

.navbar-brand:hover {
    color: #007bff
}


.navbar-right-top .nav-item {
    border-right: 1px solid #e6e6f2
}

.navbar-right-top .nav-item:last-child {
    border: none
}

.navbar-right-top .nav-item .nav-link {
    padding: 13px 20px;
    font-size: 16px;
    line-height: 2;
    color: #82849f
}

.top-search-bar {
    padding-top: 1px;
    padding-right: 24px
}

.indicator {
    content: '';
    position: absolute;
    top: 2px;
    right:247px;
    display: inline-block;
    width: 7px;
    height: 7px;
    border-radius: 100%;
    background-color: #ef172c;
    animation: .9s infinite beatHeart;
    transform-origin: center
}

@keyframes beatHeart {
    0% {
        transform: scale(0.9)
    }

    25% {
        transform: scale(1.1)
    }

    40% {
        transform: scale(0.9)
    }

    60% {
        transform: scale(1.1)
    }

    100% {
        transform: scale(0.9)
    }
}


.nav-user-dropdown {
    padding: 0px;
    min-width: 230px;
    margin: 0px
}


.nav-user-info {
    background-color: #5969ff;
    line-height: 1.4;
    padding: 12px;
    color: #fff;
    font-size: 13px;
    border-radius: 2px 2px 0 0
}

.nav-user-info .status {
    float: left;
    top: 7px;
    left: 0px
}

.nav-user-dropdown .dropdown-item {
    display: block;
    width: 100%;
    padding: 12px 22px 15px;
    clear: both;
    font-weight: 400;
    color: #686972;
    text-align: inherit;
    white-space: nowrap;
    background-color: transparent;
    border: 0;
    font-size: 13px;
    line-height: 0.4
}

.nav-user-dropdown .dropdown-item:hover {
    background-color: #f7f7fb
}

.user-avatar-xxl {
    height: 128px;
    width: 128px
}

.user-avatar-xl {
    height: 90px;
    width: 90px
}

.user-avatar-lg {
    height: 48px;
    width: 48px
}

.user-avatar-md {
    height: 32px;
    width: 32px
}

.user-avatar-sm {
    height: 24px;
    width: 24px
}

.user-avatar-xs {
    height: 18px;
    width: 18px
}

.avatar {
    width: 2.25rem;
    height: 2.25rem;
    border-radius: 50%;
    border: 2px solid #F7F9FA;
    background: #F7F9FA;
    color: #fff
}
.avatar.bg-primary {
    display: flex;
    align-items: center;
    justify-content: center
}

.avatar.bg-primary i {
    font-size: 14px
}

/*Media Query*/

/* Smartphones (portrait and landscape) ----------- */
@media only screen
and (min-device-width : 320px)
and (max-device-width : 480px) {

    .mr-28{
    margin-right:28px;
}

.navbar-nav {
    margin: 0;
}
/* Styles */
}

/* Smartphones (landscape) ----------- */
@media only screen
and (min-width : 321px) {
/* Styles */
.mt-10 {
    margin-top: 4px;
}

.mr-28 {
    margin-right: 0px;
}

.mobile-menu{
    padding-left:0px;
    padding-right:0px;
}
}

/* Smartphones (portrait) ----------- */
@media only screen
and (max-width : 320px) {
/* Styles */
}

/* iPads (portrait and landscape) ----------- */
@media only screen
and (min-device-width : 768px)
and (max-device-width : 1024px) {
/* Styles */
.mt-10 {
    margin-top: 10px;
}

.mr-28 {
    margin-right: 28px;
}
.navbar-expand-lg .navbar-nav .dropdown-menu-right {
    right: 0;
    left: auto;
}

.nav-user-dropdown{
        margin-top: 17px !important;
}

.navbar-nav {
    margin: 0;

}

}

/* iPads (landscape) ----------- */
@media only screen
and (min-device-width : 768px)
and (max-device-width : 1024px)
and (orientation : landscape) {
/* Styles */
.mt-10 {
    margin-top: 10px;
}

.mr-28 {
    margin-right: 28px;
}

.navbar-nav {

    margin: 0;


}

}

/* iPads (portrait) ----------- */
@media only screen
and (min-device-width : 768px)
and (max-device-width : 1024px)
and (orientation : portrait) {
/* Styles */
.mt-10 {
    margin-top: 10px;
}

.mr-28 {
    margin-right: 28px;
}
.navbar-nav {

    margin: 0;

}
}

/* Desktops and laptops ----------- */
@media only screen
and (min-width : 1224px) {
/* Styles */
.mt-10 {
    margin-top: 10px;
}

.mr-28 {
    margin-right: 28px;
}
    .container {
    max-width: 1384px !important;
}
}

/* Large screens ----------- */
@media only screen
and (min-width : 1824px) {
    .mt-10 {
    margin-top: 10px;
}

.mr-28 {
    margin-right: 28px;
}
/* Styles */
}


        @media only screen and (max-width: 990px){
#pav-mainnav {

    width: 100% !important;

}
}




</style>





  <!--
  <nav id="topbar">
  <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-4">
                <div class="welcome pull-left">
                    <?php if ($logged) { ?>

                    <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
                    <?php } else { ?>
                    <a href="#" data-toggle="modal" data-target="#login-modal">login</a>


                    <?php } ?>
                </div>

                <div class="show-mobile hidden-lg hidden-md pull-left">
                    <div class="quick-access">
                        <div class="quickaccess-toggle">
                            <i class="fa fa-list"></i>
                        </div>
                        <div class="inner-toggle">
                            <ul class="links pull-left">
                                <?php if ($logged) { ?>
                    <li>
                        <a class="wishlist" href="<?php echo $rewards; ?>" id="wishlist-total"><span class="fa fa-coupon"></span>Your Reward Points: <span style="color: red;"><?php echo $total; ?></span></a>
                    </li>

                                <?php } ?>
                                <li><a class="wishlist" href="<?php echo $wishlist; ?>" id="mobile-wishlist-total"><span class="fa fa-heart"></span><?php echo $text_wishlist; ?></a></li>
                                <li><a class="account" href="<?php echo $account; ?>"><span class="fa fa-user"></span><?php echo $text_account; ?></a></li>

                            </ul>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-7 col-md-8">
                <?php echo $cart; ?>
                <ul class="links pull-right hidden-sm hidden-xs">

                    <?php if ($logged) { ?>
                    <li>
                        <a class="wishlist" href="<?php echo $rewards; ?>" id="wishlist-total"><span class="fa fa-coupon"></span>Your Reward Points: <span style="color: red;"><?php echo $total; ?></span></a>
                    </li>

                    <?php } ?>

                    <li>
                        <a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><span class="fa fa-heart"></span>
                        <?php echo $text_wishlist; ?></a>
                    </li>

                    <?php if ($logged) { ?>

                     <li>
                        <a class="account" href="<?php echo $account; ?>"><span class="fa fa-user"></span><?php echo $text_account; ?></a>
                    </li>

                    <?php } ?>

                </ul>
            </div>

        </div>
    </div>
    </nav>
    -->



    <div class="container mobile-menu">
        <div class="header-wrap">


            <!--Web  menu start -->

            <div id="pav-mainnav" class="pull-left inner">
                    <div class="mainnav-wrap">

                    <!--<button data-toggle="offcanvas" class="btn button canvas-menu hidden-lg hidden-md" type="button"><span class="fa fa-bars"></span> Menu</button> -->

                    <?php

                    $modules = $helper->renderModule('pavmegamenu');


                    if (count($modules) && !empty($modules)) { ?>


                    <?php echo $modules; ?>


                    <?php } elseif ($categories) { ?>



                        <div class="navbar navbar-inverse">
                            <nav id="mainmenutop" class="megamenu" role="navigation">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="fa fa-bars"></span>
                                    </button>
                                </div>

                                <div class="collapse navbar-collapse navbar-ex1-collapse">
                                    <ul class="nav navbar-nav">

                                        <?php foreach ($categories as $category) { ?>

                                            <?php if ($category['children']) { ?>
                                                <li class="parent dropdown deeper ">
                                                    <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>
                                                        <b class="fa fa-angle-down"></b>
                                                        <span class="triangles"></span>
                                                    </a>
                                                <?php } else { ?>
                                                <li>
                                                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                                <?php } ?>
                                                <?php if ($category['children']) { ?>
                                                    <ul class="dropdown-menu">
                                                        <?php for ($i = 0; $i < count($category['children']);) { ?>
                                                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                                            <?php for (; $i < $j; $i++) { ?>
                                                                <?php if (isset($category['children'][$i])) { ?>
                                                                    <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                                                <?php } ?>
                                                            <?php } ?>
                                                        <?php } ?>
                                                    </ul>
                                                <?php } ?>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    <?php } ?>
                    </div>




            </div>


            <!--Web menu end-->


        </div>
    </div>
</header>
