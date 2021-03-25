<?php
/******************************************************
 * @package Pav Opencart Theme Framework for Opencart 1.5.x
 * @version 1.1
 * @author http://www.pavothemes.com
 * @copyright Copyright (C) Augus 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
 * @license   GNU General Public License version 2
*******************************************************/
$config = $this->registry->get('config');
$themeName =  $config->get('config_template');
$themeConfig = (array)$config->get('themecontrol');

require_once(DIR_SYSTEM . 'pavothemes/loader.php');
$helper = ThemeControlHelper::getInstance( $this->registry, $themeName );
$helper->setDirection( $direction );
$helper->triggerUserParams( array('headerlayout','productlayout') );
/* Add scripts files */
$helper->addScript( 'catalog/view/javascript/jquery/jquery-2.1.1.min.js' );
$helper->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
$helper->addScript( 'catalog/view/javascript/bootstrap/js/bootstrap.min.js' );
$helper->addScript( 'catalog/view/javascript/common.js' );

$helper->addScript( 'catalog/view/theme/'.$themeName.'/javascript/common.js' );
if( isset($themeConfig['catalog_mode']) && $themeConfig['catalog_mode'] ){
  $cart = null;
}
$logoType = $helper->getConfig('logo_type','logo-theme');
$headerlayout = $helper->getConfig('header_layout');
$template_layout = $helper->getConfig('layout');
$skin = $helper->getConfig('skin');


if( $helper->getConfig('enable_paneltool') ){
  if( $helper->getParam('headerlayout') ){
    $headerlayout = $helper->getParam('headerlayout');
  }

  if($helper->getParam('layout')){
    $template_layout = $helper->getParam('layout');
  }



  $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/paneltool.css' );
  $helper->addScript( 'catalog/view/javascript/jquery/colorpicker/js/colorpicker.js' );
  $helper->addCss( 'catalog/view/javascript/jquery/colorpicker/css/colorpicker.css' );
}

$helper->addScriptList( $scripts );

$ctheme=$helper->getConfig('customize_theme');
if( file_exists(DIR_TEMPLATE.$themeName.'/stylesheet/customize/'.$ctheme.'.css') ) {
  $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/customize/'.$ctheme.'.css'  );
}

if($direction == "rtl"){
   $helper->addCss( 'catalog/view/theme/'.$themeName.'/stylesheet/rtl/stylesheet-rtl.css'  );
}

$helper->addCss( 'catalog/view/javascript/font-awesome/css/font-awesome.min.css' );
$helper->addCss('catalog/view/javascript/jquery/magnific/magnific-popup.css');
// -$helper->addCss( '//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700' );

$helper->addCssList( $styles );
$logoType = $helper->getConfig('logo_type','logo-theme');

?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" class="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>

    <?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($helper->getCssLinks() as $link) { ?>
<link href="<?php echo $link['href']; ?>?version=2.6" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach( $helper->getScriptFiles() as $script )  { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=5d6bc35c16b81b0012138c64&product=inline-share-buttons' async='async'></script>
<?php } ?>

<?php if( isset($themeConfig['theme_width']) && $themeConfig['theme_width'] &&  $themeConfig['theme_width'] != 'auto' ) { ?>
   <style>
   #page .container{max-width:<?php echo $themeConfig['theme_width'];?>; width:auto;}

   .pav-categoryproducts .carousel-control.left {
    left: -2px;
    top: 40%;
    background-color: #e74c3c !important;
    color: #fff;
    display: block !important;


 </style>
 <?php } ?>
<!-- FONT -->
<?php
  if( isset($themeConfig['enable_customfont']) && $themeConfig['enable_customfont'] ){
  $css=array();
  $link = array();
  for( $i=1; $i<=3; $i++ ){
    if( trim($themeConfig['google_url'.$i]) && $themeConfig['type_fonts'.$i] == 'google' ){
      $link[] = '<link rel="stylesheet" type="text/css" href="'.trim($themeConfig['google_url'.$i]) .'"/>';
      $themeConfig['normal_fonts'.$i] = $themeConfig['google_family'.$i];
    }
  }
  echo implode( "\r\n",$link );
?>
<style>
  body {font-family: <?php echo $themeConfig['normal_fonts1']; ?>; font-size: <?php echo $themeConfig['fontsize1']; ?>}
  #header-main {font-family: <?php echo $themeConfig['normal_fonts2']; ?>; font-size: <?php echo $themeConfig['fontsize2']; ?>}
  #module-container {font-family: <?php echo $themeConfig['normal_fonts3']; ?>; font-size: <?php echo $themeConfig['fontsize3']; ?>}

  <?php
    if( trim($themeConfig['body_selector4']) && trim($themeConfig['normal_fonts4']) ){
      $css[]= trim($themeConfig['body_selector4'])." {font-family:".str_replace("'",'"',htmlspecialchars_decode(trim($themeConfig['normal_fonts4'])))."}\r\n" ;
    }
     echo implode("\r\n",$css);
  ?>

</style>
<?php } ?>
<!-- FONT -->
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>





<style type="text/css">


  @media only screen and (min-width: 1224px)
.container {
    max-width: 1430px !important;
}

.name{

        display: -webkit-box !important;
    -webkit-line-clamp: 2 !important;
    -webkit-box-orient: vertical !important;
    overflow: hidden !important;
    text-overflow: ellipsis !important;
  }




  #topcontrol{

      position: fixed;
    bottom: 107px !important;
    right: 48px !important;
    opacity: 1 !important;
    cursor: pointer;
  }


  #resend_otp:hover{

    color:red;
    cursor: pointer;

    }

 .layerslider-wrapper{

        display: none !important;
  }


  #pav-mainnav .navbar ul.nav > li > a {
    text-transform: uppercase;
    font-size: 14px;
    overflow: hidden;
    padding-top: 18px !important;
    padding-bottom: 15px !important;
}

#header-main .header-wrap > div {
    height: 50px !important;
}


/*#sidebar-main{

  display: none !important;
}*/

.theme-color{
      background-color: #2874ef !important;
}
</style>




<style type="text/css">
.inova{
  position: fixed;
    top: 50%;
    left: 0px;
}
.inova a{-webkit-transition: all 0.3s ease-in-out; -moz-transition: all 0.3s ease-in-out; -o-transition: all 0.3s ease-in-out; -ms-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out;}
.inova a.whatsapp:hover{background:#39599f;}
.inova .fa {
width: 23px;
height: 21px;
text-align: center;
margin: 0 2px;
display: inline-block;
font-size: 20px;
color: #fff;
border-radius: 2px;
-webkit-transition: all 0.3s ease-in-out;
-moz-transition: all 0.3s ease-in-out;
-o-transition: all 0.3s ease-in-out;
-ms-transition: all 0.3s ease-in-out;
transition: all 0.3s ease-in-out;
}
.botao-wpp {
text-decoration: none;
color: #eee;
display: inline-block;
background-color: #25d366;
font-weight: bold;
padding: 1rem 2rem;
border-radius: 3px;
}
.botao-wpp:hover {
background-color: darken(#25d366, 5%);
}
.botao-wpp:focus {
background-color: darken(#25d366, 15%);
}



/*Modal Css start*/

/* #####################################################################
   #
   #   Project       : Modal Login with jQuery Effects
   #   Author        : Rodrigo Amarante (rodrigockamarante)
   #   Version       : 1.0
   #   Created       : 07/28/2015
   #   Last Change   : 08/02/2015
   #
   ##################################################################### */



#login-modal .modal-dialog {
    width: 350px;
}

#login-modal input[type=text], input[type=password] {
  margin-top: 10px;
}

#div-login-msg,
#div-lost-msg,
#div-register-msg {
    border: 1px solid #dadfe1;
    height: 30px;
    line-height: 28px;
    transition: all ease-in-out 500ms;
}

#div-login-msg.success,
#div-lost-msg.success,
#div-register-msg.success {
    border: 1px solid #68c3a3;
    background-color: #c8f7c5;
}

#div-login-msg.error,
#div-lost-msg.error,
#div-register-msg.error {
    border: 1px solid #eb575b;
    background-color: #ffcad1;
}

#icon-login-msg,
#icon-lost-msg,
#icon-register-msg {
    width: 30px;
    float: left;
    line-height: 28px;
    text-align: center;
    background-color: #dadfe1;
    margin-right: 5px;
    transition: all ease-in-out 500ms;
}

#icon-login-msg.success,
#icon-lost-msg.success,
#icon-register-msg.success {
    background-color: #68c3a3 !important;
}

#icon-login-msg.error,
#icon-lost-msg.error,
#icon-register-msg.error {
    background-color: #eb575b !important;
}

#img_logo {
    max-height: 100px;
    max-width: 100px;
}

/* #########################################
   #    override the bootstrap configs     #
   ######################################### */

   @media screen and (min-width: 768px){
   .modal-dialog {
       left: 0%;
       right: auto;
       width: 600px;
       padding-top: 30px;
       padding-bottom: 30px;
   }
 }

.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: .8;
}

.modal-content {
    background-color: #ececec;
    border: 1px solid #bdc3c7;
    border-radius: 0px;
    outline: 0;
}

.modal-header {
    min-height: 16.43px;
    padding: 15px 15px 15px 15px;
    border-bottom: 0px;
}

.modal-body {
    position: relative;
    padding: 5px 15px 5px 15px;
}

.modal-footer {
    padding: 15px 15px 15px 15px;
    text-align: left;
    border-top: 0px;
        margin-top: -16px !important;
}

.btn-link {
    padding: 5px 10px 0px 0px;
    color: #333333;
}

.btn-link:hover, .btn-link:focus {
    color: #dd515d;
    text-decoration: none;
}


/*.checkbox {
    margin-bottom: 0px;
}

.btn {
    border-radius: 0px;
}

.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
    outline: none;
}

.btn-lg, .btn-group-lg>.btn {
    border-radius: 0px;
}



.glyphicon {
    top: 0px;
}*/

/*.form-control {
  border-radius: 0px;
}*/


/*Modal Css end*/


</style>

</head>
<body class="<?php echo $class; ?> <?php echo $helper->getPageClass();?> layout-<?php echo $template_layout; ?>">


  <div  class="row-offcanvas row-offcanvas-left">

  <div id="page">


<!-- header -->
<?php
  if( file_exists($helper->getLayoutPath('common/header/'.$headerlayout.'.tpl')) ) {
    require( $helper->getLayoutPath('common/header/'.$headerlayout.'.tpl') );
  }else {
    require( ThemeControlHelper::getLayoutPath( 'common/header/default.tpl' ) );
  }
?>
<!-- /header -->



<!-- sys-notification -->
<div id="sys-notification">
  <div class="container">
    <div id="notification"></div>
  </div>
</div>
<!-- /sys-notification -->



<!-- BEGIN # MODAL LOGIN -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header" align="center">
          <img class="img-circle" id="img_logo" src="https://img.icons8.com/bubbles/100/000000/guest-male.png">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
          </button>
        </div>

                <!-- Begin # DIV Form -->
                <div id="div-forms">

                    <!-- Begin # Login Form -->
                    <form id="login-form">
                    <div class="modal-body">
                <div id="div-login-msg">
                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-login-msg">Type your username and password.</span>
                            </div>
                <input id="login_username" name="username"  class="form-control" type="text" placeholder="Email or Phone" required>
                <input id="login_password" name="password" class="form-control" type="password" placeholder="Password" required>
                    <span style="color:red; font-size: 10px; margin-left: 5px;" id="error"></span>
                    <!--
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                            </div>
                      -->
                  </div>
                <div class="modal-footer">
                            <div>
                                <button type="button" name="login_button" id="login_button" class="btn btn-primary btn-block">Login</button>
                            </div>
                            <div style="text-align: center; margin-top: 11px; margin-bottom: 11px;">
                                <span>
                                    OR
                                </span>
                            </div>
                            <div>
                                <button type="button" name="otp_login_button" id="otp_login_button" class="btn btn-primary btn-block">Login using OTP</button>
                            </div>
                  <div>
                                <button id="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                                <button id="login_register_btn" type="button" class="btn btn-link">Register</button>

                                <!-- <button id="login_verify_btn" type="button" class="btn btn-link">Verify OTP</button> -->

                            </div>
                </div>
                    </form>
                    <!-- End # Login Form -->

                    <!-- Begin | Lost Password Form -->
                    <form id="lost-form" style="display:none;">
                  <div class="modal-body">
                <div id="div-lost-msg">
                                <div id="icon-lost-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-lost-msg">Reset password using OTP</span>
                            </div>
                <input id="lost_email" class="form-control" type="text" placeholder="Phone" required>
                <span style="color:red; font-size: 10px; margin-left: 5px;" id="password_lost"></span>
                  </div>
                <div class="modal-footer">
                            <div>
                                <button id="reset_password_button" type="button" class="btn btn-primary btn-block">Send</button>
                            </div>
                            <div>
                                <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
                                <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
                            </div>
                </div>
                    </form>
                    <!-- End | Lost Password Form -->

                    <!-- Begin | Register Form -->
                    <form id="register-form" style="display:none;">
                 <div class="modal-body">
                   <div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">Register an account.</span>

                            </div>
                            <input id="register_username" class="form-control" type="text" placeholder="Email" required>
                            <input id="register_email" class="form-control" type="text" placeholder="Phone" required>
                            <input id="register_password" class="form-control" type="password" placeholder="Password" required>

                            <span style="color:red; font-size: 10px; margin-left: 5px;" id="error_text_phone"></span>
                  </div>

                <div class="modal-footer">
                            <div>
                                <button type="button" id="register_button" class="btn btn-primary btn-block">Register</button>
                            </div>
                            <div>
                                <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
                                <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                            </div>
                </div>
                    </form>
                    <!-- End | Register Form -->

                <!-- Begin | verify register login Form -->
                    <form id="verify-form" style="display:none;">
                  <div class="modal-body">
                <div id="div-otp">
                                <div id="icon-otp" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-otp">Enter OTP sent to your phone</span>
                            </div>
                <input id="otp" class="form-control" type="text" placeholder="OTP" required>
                <!--
                <span style="color:red; font-size: 10px; margin-left: 5px;" id="otp_error"></span>
                -->

                 <div style="text-align:right;width:100%">
    <span  style="color:red; font-size: 10px; margin-left: 5px;float:left;" id="otp_error"></span>
    <span id="resend_otp">Resend OTP</span>
</div>

                  </div>
                <div class="modal-footer">
                            <div>
                                <button type="button" id="verify_button" class="btn btn-primary btn-block">Verify Now</button>
                            </div>
                            <!--
                            <div>
                                <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>

                                <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>

                            </div>
                          -->
                </div>
                    </form>
                    <!-- End | verify register login Form -->





             <!-- Begin | login Using OTP Form -->
                    <form id="login-otp-form" style="display:none;">
                  <div class="modal-body">
                <div id="div-otp">
                                <div id="icon-otp" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-otp">Enter OTP sent to your phone</span>
                            </div>
                <input id="login-otp" class="form-control" type="text" placeholder="OTP" required>
                <!--
                <span style="color:red; font-size: 10px; margin-left: 5px;" id="otp_error"></span>
                -->

                 <div style="text-align:right;width:100%">
                      <span  style="color:red; font-size: 10px; margin-left: 5px;float:left;" id="login-otp_error"></span>
                      <!--
                      <span id="login-resend_otp">Resend OTP</span>
                      -->
                  </div>

                  </div>
                <div class="modal-footer">
                            <div>
                                <button type="button" id="login_using_otp_button" class="btn btn-primary btn-block">Login Now</button>
                            </div>

                </div>
                    </form>
                     <!-- End | login Using OTP Form -->







                </div>
                <!-- End # DIV Form -->

      </div>
    </div>
  </div>
    <!-- END # MODAL LOGIN -->



<!-- Modal Script start -->






<!-- Modal Script end -->

 <script>
 $(document).ready(function(){
      $('#login_button').click(function(e){
            e.preventDefault();
            $('#error').text("");
           var username = $('#login_username').val();
           var password = $('#login_password').val();




           if(username != '' && password != '')
           {
                $.ajax({
                     url:'index.php?route=account/login_redeem',
                     method:"POST",
                     data: {email:username,password:password},
                     beforeSend: function() {

                          $("#login_button").html('Please wait...');
                          $("#login_button").attr("disabled", true);

                      },

                     success:function(data)
                     {
                       $("#login_button").html('Login');
                       $("#login_button").attr("disabled", false);

                         if(data == 'Yes')
                          {
                                // $('#loginModal').hide();
                                  $('#login-modal').hide();

                                 location.reload();
                          }
                          else
                          {
                              $('#error').text("Phone or Password incorrect!");

                          }
                     }
                });
           }
           else
           {

                $('#error').text("Both Fields are required");
                //alert("Both Fields are required");
           }
      });

 });
 </script>



<!--Register Account-->
 <script>

 $(document).ready(function(){

      var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $formVerify = $('#verify-form');
    var $divForms = $('#div-forms');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 2000;


    function modalAnimate ($oldForm, $newForm) {
        var $oldH = $oldForm.height();
        var $newH = $newForm.height();
        $divForms.css("height",$oldH);
        $oldForm.fadeToggle($modalAnimateTime, function(){
            $divForms.animate({height: $newH}, $modalAnimateTime, function(){
                $newForm.fadeToggle($modalAnimateTime);
            });
        });
    }

      $('#register_button').click(function(e){
            e.preventDefault();
            $('#error_text_phone').text("");
           var username = $('#register_username').val();
           var phone = $('#register_email').val();
           var password = $('#register_password').val();
           var firstname = "Rentopc";
           var lastname = "Guest";

           if(username != '' && phone != '' && password != '')
           {
                $.ajax({
                     url:'index.php?route=account/register_redeem',
                     method:"POST",
                     data: {email:username,telephone:phone,password:password,firstname:firstname,lastname:lastname},

                     beforeSend: function() {
                          $("#register_button").html('Please wait...');
                          $("#register_button").attr("disabled", true);
                      },

                     success:function(data)
                     {
                       if(data=='success'){

                           $("#register_button").attr("disabled", false);
                            modalAnimate($formRegister, $formVerify);

                         }else{

                              //alert(data);
                              $('#error_text_phone').text("Email/Phone already exists");
                              $("#register_button").attr("disabled", false);
                              $("#register_button").html('Register');

                         }
                     }
                });
           }
           else
           {
                $('#error_text_phone').text("All Fields are required");
           }
      });

 });

 </script>


 <!--Register Account-->


  <!--Verify  Account-->

 <script>

 $(document).ready(function(){

      $('#verify_button').click(function(e){
            e.preventDefault();

            $('#otp_error').text("");
           var otp = $('#otp').val();
           var phone =$('#register_email').val();
           //alert(phone);
           var password = $('#register_password').val();
           var username = $('#register_username').val();

           if(otp != '')
           {
                $.ajax({
                     url:'index.php?route=account/register_redeem/verify_register_otp',
                     method:"POST",
                     data: {otp:otp,email:username,telephone:phone,password:password},
                     beforeSend: function() {

                          $("#verify_button").html('Please wait...');
                          $("#verify_button").attr("disabled", true);

                      },
                     success:function(data)
                     {
                       $("#verify_button").attr("disabled", false);
                         if(data == 'success')
                          {
                                 $('#login-modal').hide();
                                  location.reload();

                          }
                          else
                          {
                              $("#verify_button").html('Verify Now');
                              $('#otp_error').text("Incorrect OTP! Try Again");

                          }
                     }
                });
           }
           else
           {
                $('#otp_error').text("Please enter OTP");
           }
      });

 });

 </script>
 <!--Verify Account-->

 <!--Resend OTP Start-->
<script>

 $(document).ready(function(){

      $('#resend_otp').click(function(e){
            e.preventDefault();
            $('#otp_error').text("");
           var phone =$('#register_email').val();
           if(phone != '')
           {
                $.ajax({
                     url:'index.php?route=account/register_redeem/resend_otp',
                     method:"POST",
                     data: {phone:phone},
                     beforeSend: function() {
                          $("#resend_otp").text('Sending...');
                      },
                     success:function(data)
                     {
                         if(data == 'success')
                          {

                                  $("#resend_otp").text('Resend Now');

                          }
                          else
                          {
                              $("#verify_button").html('Verify Now');
                              $('#otp_error').text("Incorrect OTP! Try Again");

                          }
                     }
                });
           }
           else
           {
                $('#otp_error').text("Please enter OTP");
           }
      });

 });

 </script>

 <!--Resend OTP End-->



 <!--Reset password Start-->

<script>


  var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $formVerify = $('#verify-form');
    var $divForms = $('#div-forms');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 2000;


    function modalAnimate ($oldForm, $newForm) {
        var $oldH = $oldForm.height();
        var $newH = $newForm.height();
        $divForms.css("height",$oldH);
        $oldForm.fadeToggle($modalAnimateTime, function(){
            $divForms.animate({height: $newH}, $modalAnimateTime, function(){
                $newForm.fadeToggle($modalAnimateTime);
            });
        });
    }

 $(document).ready(function(){

      $('#reset_password_button').click(function(e){
            e.preventDefault();
           $('#password_lost').text("");
           var phone =$('#lost_email').val();
           if(phone != '')
           {
                $.ajax({
                     url:'index.php?route=account/register_redeem/reset_password',
                     method:"POST",
                     data: {phone:phone},
                     beforeSend: function() {

                          $("#reset_password_button").html('Please wait...');
                          $("#reset_password_button").attr("disabled", true);
                         // $("#resend_otp").text('Sending...');
                      },

                     success:function(data)
                     {

                        //  alert(data);

                         if(data=='success'){

                            $('#password_lost').text("Password sent to you Mobile Number");
                            $('#password_lost').css('color','green');
                            $("#reset_password_button").attr("disabled", false);
                            $("#reset_password_button").html('Send');
                            modalAnimate($formLost, $formLogin);
                            $('#password_lost').text("");

                         }else{

                             $('#password_lost').text("Mobile number not registered! Register Now");
                             $("#reset_password_button").attr("disabled", false);
                             $("#reset_password_button").html('Send');

                         }

                     }
                });
           }
           else
           {
                $('#otp_error').text("Please enter Phone number");
           }
      });

 });

 </script>

 <!--Reset password End-->



<!--Login using OTP start-->
<script>


  var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $formVerify = $('#verify-form');
    var $divForms = $('#div-forms');
    var $formLoginOtp = $('#login-otp-form');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 2000;


    function modalAnimate ($oldForm, $newForm) {
        var $oldH = $oldForm.height();
        var $newH = $newForm.height();
        $divForms.css("height",$oldH);
        $oldForm.fadeToggle($modalAnimateTime, function(){
            $divForms.animate({height: $newH}, $modalAnimateTime, function(){
                $newForm.fadeToggle($modalAnimateTime);
            });
        });
    }

 $(document).ready(function(){


      $('#otp_login_button').click(function(e){
            e.preventDefault();
            $('#error').text("");
           var phone =$('#login_username').val();

           if(phone != '' && !isNaN(phone))
           {

                $.ajax({
                     url:'index.php?route=account/register_redeem/check_account',
                     method:"POST",
                     data: {phone:phone},
                     beforeSend: function() {

                          $("#otp_login_button").html('Please wait...');
                          $("#otp_login_button").attr("disabled", true);

                      },

                     success:function(data)
                     {

                       //alert(data);

                          if(data=='success'){

                            $("#otp_login_button").html('Login using OTP');
                            $("#otp_login_button").attr("disabled", false);
                            modalAnimate($formLogin, $formLoginOtp);



                          }else{

                            $("#otp_login_button").html('Login using OTP');
                            $("#otp_login_button").attr("disabled", false);


                          }

                     }
                });
           }
           else
           {
                $('#error').text("Please enter Phone number");
           }
      });

 });

 </script>

<!--Login using OTP end-->





 <!--Verify  OTP for Login-->

 <script>

 $(document).ready(function(){

      $('#login_using_otp_button').click(function(e){
            e.preventDefault();

            $('#login_otp_error').text("");
           var otp = $('#login-otp').val();
           var phone =$('#login_username').val();

           if(otp != '')
           {
                $.ajax({
                     url:'index.php?route=account/register_redeem/verify_login_via_otp',
                     method:"POST",
                     data: {otp:otp,telephone:phone},
                     beforeSend: function() {

                          $("#login_using_otp_button").html('Please wait...');
                          $("#login_using_otp_button").attr("disabled", true);

                      },
                     success:function(data)
                     {
                         if(data == 'success')
                          {
                                 $('#login-modal').hide();
                                  location.reload();

                          }
                          else
                          {
                              $("#login_using_otp_button").html('Login Now');
                              $('#login-otp_error').text("Incorrect OTP! Try Again");
                              $("#login_using_otp_button").attr("disabled", false);

                          }
                     }
                });
           }
           else
           {
                $('#login-otp_error').text("Please enter OTP");
           }
      });

 });

 </script>
 <!--Verify OTP for login-->







 <script type="text/javascript">


  /* #####################################################################
   #
   #   Project       : Modal Login with jQuery Effects
   #   Author        : Rodrigo Amarante (rodrigockamarante)
   #   Version       : 1.0
   #   Created       : 07/29/2015
   #   Last Change   : 08/04/2015
   #
   ##################################################################### */

$(function() {

    var $formLogin = $('#login-form');
    var $formLost = $('#lost-form');
    var $formRegister = $('#register-form');
    var $formVerify = $('#verify-form');
    var $divForms = $('#div-forms');
    var $formLoginOtp = $('#login-otp-form');
    var $modalAnimateTime = 300;
    var $msgAnimateTime = 150;
    var $msgShowTime = 2000;

    $("form").submit(function () {
        switch(this.id) {
            case "login-form":
                var $lg_username=$('#login_username').val();
                var $lg_password=$('#login_password').val();
                if ($lg_username == "ERROR") {
                    msgChange($('#div-login-msg'), $('#icon-login-msg'), $('#text-login-msg'), "error", "glyphicon-remove", "Login error");
                } else {
                    msgChange($('#div-login-msg'), $('#icon-login-msg'), $('#text-login-msg'), "success", "glyphicon-ok", "Login OK");
                }
                return false;
                break;


            case "verify-form":
                var $ls_otp=$('#otp').val();
                if ($ls_otp == "ERROR") {
                    msgChange($('#div-otp'), $('#icon-otp'), $('#text-otp'), "error", "glyphicon-remove", "Send error");
                } else {
                    msgChange($('#div-otp'), $('#icon-otp'), $('#text-otp'), "success", "glyphicon-ok", "Send OK");
                }
                return false;
                break;
            case "login-otp-form":
                var $ls_otp=$('#login-otp').val();
                if ($ls_otp == "ERROR") {
                    msgChange($('#div-otp'), $('#icon-otp'), $('#text-otp'), "error", "glyphicon-remove", "Send error");
                } else {
                    msgChange($('#div-otp'), $('#icon-otp'), $('#text-otp'), "success", "glyphicon-ok", "Send OK");
                }
                return false;
                break;





            case "lost-form":
                var $ls_email=$('#lost_email').val();
                if ($ls_email == "ERROR") {
                    msgChange($('#div-lost-msg'), $('#icon-lost-msg'), $('#text-lost-msg'), "error", "glyphicon-remove", "Send error");
                } else {
                    msgChange($('#div-lost-msg'), $('#icon-lost-msg'), $('#text-lost-msg'), "success", "glyphicon-ok", "Send OK");
                }
                return false;
                break;
            case "register-form":
                var $rg_username=$('#register_username').val();
                var $rg_email=$('#register_email').val();
                var $rg_password=$('#register_password').val();
                if ($rg_username == "ERROR") {
                    msgChange($('#div-register-msg'), $('#icon-register-msg'), $('#text-register-msg'), "error", "glyphicon-remove", "Register error");
                } else {
                    msgChange($('#div-register-msg'), $('#icon-register-msg'), $('#text-register-msg'), "success", "glyphicon-ok", "Register OK");
                }
                return false;
                break;
            default:
                return false;
        }
        return false;
    });

    $('#login_register_btn').click( function () { modalAnimate($formLogin, $formRegister) });
    $('#register_login_btn').click( function () { modalAnimate($formRegister, $formLogin); });
    $('#login_lost_btn').click( function () { modalAnimate($formLogin, $formLost); });
    $('#lost_login_btn').click( function () { modalAnimate($formLost, $formLogin); });
    $('#lost_register_btn').click( function () { modalAnimate($formLost, $formRegister); });
    $('#register_lost_btn').click( function () { modalAnimate($formRegister, $formLost); });

    $('#login_verify_btn').click( function () { modalAnimate($formLogin, $formVerify); });
    $('#register_verify_btn').click( function () { modalAnimate($formRegister, $formVerify); });

    function modalAnimate ($oldForm, $newForm) {
        var $oldH = $oldForm.height();
        var $newH = $newForm.height();
        $divForms.css("height",$oldH);
        $oldForm.fadeToggle($modalAnimateTime, function(){
            $divForms.animate({height: $newH}, $modalAnimateTime, function(){
                $newForm.fadeToggle($modalAnimateTime);
            });
        });
    }

    function msgFade ($msgId, $msgText) {
        $msgId.fadeOut($msgAnimateTime, function() {
            $(this).text($msgText).fadeIn($msgAnimateTime);
        });
    }

    function msgChange($divTag, $iconTag, $textTag, $divClass, $iconClass, $msgText) {
        var $msgOld = $divTag.text();
        msgFade($textTag, $msgText);
        $divTag.addClass($divClass);
        $iconTag.removeClass("glyphicon-chevron-right");
        $iconTag.addClass($iconClass + " " + $divClass);
        setTimeout(function() {
            msgFade($textTag, $msgOld);
            $divTag.removeClass($divClass);
            $iconTag.addClass("glyphicon-chevron-right");
            $iconTag.removeClass($iconClass + " " + $divClass);
      }, $msgShowTime);
    }
});
</script>






<?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'slideshow';
$blockcls = '';
$ospans = array(2=>12);
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>


<?php
/**
 * Showcase modules
 * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 */
$blockid = 'showcase';
$blockcls = '';
$ospans = array();
require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>


<div style="margin-top: 20px;">


</div>
