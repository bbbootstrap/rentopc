<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->


<?php if ($config_whatsappid) { ?>
<div class="inova">
<a class="inova whatsapp" href="https://api.whatsapp.com/send?phone=<?php echo $config_whatsappid; ?>" type="image/x-icon" />
<button type="button" class="btn btn-success">
<i class="fa fa-whatsapp"></i><?php echo $config_whatsapptl; ?></button></a></div>
<?php } ?>


<div id="loginModel" class="login modal fade" role="dialog">
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form class="login-form" action="<?php echo $action; ?>" method="post" novalidate="novalidate" style="display: block;">
            <h3 class="form-title font-green">Sign In</h3>
            <div class="alert alert-danger display-hide" style="display: none;">
                <button class="close" data-close="alert"></button>
                <span> Enter your email and password. </span>
            </div>
            <input type="hidden" name="ajax" value="true"/>
            <div class="form-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Email</label>
                <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="email" name="email"> </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password"> </div>
            <div class="form-actions">
                <button type="button" class="btn green uppercase" id="loginBtn">Login</button>
                <a href="javascript:;" id="forget-password" class="forget-password">Forgot Password?</a>
            </div>
            <div class="create-account">
                <p>
                    <a href="javascript:;" id="register-btn" class="uppercase">Create an account</a>
                </p>
            </div>
        </form>
        <!-- END LOGIN FORM -->
        <!-- BEGIN FORGOT PASSWORD FORM -->
        <form class="forget-form" action="<?php echo $forgotten; ?>" method="post" novalidate="novalidate">
            <h3 class="font-green">Forget Password ?</h3>
            <div class="alert alert-danger display-hide" style="display: none;">
                <button class="close" data-close="alert"></button>
                <span>  </span>
            </div>
            <div class="alert alert-success display-hide" style="display: none;">
                <button class="close" data-close="alert"></button>
                <span></span>
            </div>
            <input type="hidden" name="ajax" value="true"/>
            <div class="form-group">
                <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"> </div>
            <div class="form-actions">
                <button type="button" id="back-btn" class="btn green btn-outline">Back</button>
                <button type="submit" class="btn btn-success uppercase pull-right" id="forget-submit-btn">Submit</button>
            </div>
        </form>
        <!-- END FORGOT PASSWORD FORM -->
        <!-- BEGIN REGISTRATION FORM -->
        <form class="register-form" action="<?php echo $register; ?>" method="post" novalidate="novalidate" style="display: none;">
            <h3 class="font-green">Sign Up</h3>
            <div class="alert alert-danger display-hide" style="display: none;">
                <button class="close" data-close="alert"></button>
                <span> Enter your email and password. </span>
            </div>
            <input type="hidden" name="ajax" value="true"/>
            <div class="form-group col-md-6 padding-2">
                <label class="control-label visible-ie8 visible-ie9">First Name</label>
                <input class="form-control placeholder-no-fix" type="text" placeholder="First Name" name="firstname"> </div>
            <div class="form-group col-md-6 padding-2">
                <label class="control-label visible-ie8 visible-ie9">Last Name</label>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Last Name" name="lastname"> </div>
            <div class="form-group col-md-6 padding-2">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">Email</label>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Email" name="email"> </div>
            <div class="form-group col-md-6 padding-2">
                <label class="control-label visible-ie8 visible-ie9">Telephone</label>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Telephone" name="telephone"> </div>
            <div class="form-group col-md-6 padding-2">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password"> </div>
            <div class="form-group col-md-6 padding-2">
                <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="confirm"> </div>
            <div class="form-group margin-top-20 margin-bottom-20">
                <label class="mt-checkbox mt-checkbox-outline">
                    <input type="checkbox" name="agree"> I agree to the
                    <a href="javascript:;">Terms of Service </a> &amp;
                    <a href="javascript:;">Privacy Policy </a>
                    <span></span>
                </label>
                <div id="register_tnc_error"> </div>
            </div>
            <div class="form-actions">
                <button type="button" id="register-back-btn" class="btn green btn-outline">Back</button>
                <button type="button" id="register-submit-btn" class="btn btn-success uppercase pull-right">Submit</button>
            </div>
        </form>
        <!-- END REGISTRATION FORM -->
    </div>

</div>
<script src="catalog/view/javascript/lp/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var Login = function() {

    var handleLogin = function() {

        $('.login-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            rules: {
                email: {
                    required: true
                },
                password: {
                    required: true
                },
                remember: {
                    required: false
                }
            },

            messages: {
                email: {
                    required: "Email is required."
                },
                password: {
                    required: "Password is required."
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   
                $('.alert-danger', $('.login-form')).show();
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                error.insertAfter(element.closest('.input-icon'));
            },

            submitHandler: function(form) {
                event.preventDefault();
                //form.submit(); // form validation success, call ajax form submit
            }
        });

        $('.login-form input').keypress(function(e) {
            if (e.which == 13) {
                event.preventDefault();
                submitLogin();
            }
        });
        $("#loginBtn").on('click', function(){
            submitLogin();
        });
        var submitLogin = function(){
            if ($('.login-form').validate().form()) {
                $.ajax({
                    url: '<?php echo $action; ?>',
                    data: $('.login-form').serialize(),
                    method: 'post',
                    success: function(data){
                        var response = jQuery.parseJSON(data);
                        if(response.redirect != undefined){
                            location.href = response.redirect;
                        }else{
                            $('.alert-danger', $('.login-form')).html(response.warning);
                            $('.alert-danger', $('.login-form')).show();
                        }
                    }
                });
    //                    $('.login-form').submit(); //form validation success, call ajax form submit
            }
        }
    }
    

    var handleForgetPassword = function() {
        $('.forget-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },

            messages: {
                email: {
                    required: "Email is required."
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   

            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                error.insertAfter(element.closest('.input-icon'));
            },

            submitHandler: function(form) {
                submitForget();
            }
        });

        $('.forget-form input').keypress(function(e) {
            if (e.which == 13) {
                submitForget();
                return false;
            }
        });

        jQuery('#forget-password').click(function() {
            jQuery('.login-form').hide();
            jQuery('.forget-form').show();
        });

        jQuery('#back-btn').click(function() {
            jQuery('.login-form').show();
            jQuery('.forget-form').hide();
        });
        
        var submitForget = function(){
            $('.alert-success', $('.forget-form')).hide();
            $('.alert-danger', $('.forget-form')).hide();
            if ($('.forget-form').validate().form()) {
                $.ajax({
                    url: '<?php echo $forgotten; ?>',
                    data: $('.forget-form').serialize(),
                    method: 'post',
                    success: function(data){
                        var response = jQuery.parseJSON(data);
                        if(response.msg != undefined){
                            $('.alert-success', $('.forget-form')).html(response.msg);
                            $('.alert-success', $('.forget-form')).show();
                        }else{
                            $('.alert-danger', $('.forget-form')).html(response.warning);
                            $('.alert-danger', $('.forget-form')).show();
                        }
                    }
                });
    //                    $('.login-form').submit(); //form validation success, call ajax form submit
            }
        }

    }

    var handleRegister = function() {

        $('.register-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {

                firstname: {
                    required: true
                },
                lastname: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                telephone: {
                    required: true
                },
                password: {
                    required: true
                },
                confirm: {
                    equalTo: "#register_password"
                },
                agree: {
                    required: true
                }
            },

            messages: { // custom messages for radio buttons and checkboxes
                agree: {
                    required: "Please accept TNC first."
                }
            },

            invalidHandler: function(event, validator) { //display error alert on form submit   

            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            success: function(label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                if (element.attr("name") == "agree") { // insert checkbox errors after the container                  
                    error.insertAfter($('#register_tnc_error'));
                } else if (element.closest('.input-icon').size() === 1) {
                    error.insertAfter(element.closest('.input-icon'));
                } else {
                    error.insertAfter(element);
                }
            },

            submitHandler: function(form) {
                //form[0].submit();
                submitRegister();
            }
        });

        $("#register-submit-btn").on('click', function(){
            submitRegister();
        });
        $('.register-form input').keypress(function(e) {
            if (e.which == 13) {
                if ($('.register-form').validate().form()) {
                    submitRegister();
                }
            }
        });

        jQuery('#register-btn').click(function() {
            jQuery('.login-form').hide();
            jQuery('.register-form').show();
        });

        jQuery('#register-back-btn').click(function() {
            jQuery('.login-form').show();
            jQuery('.register-form').hide();
        });
        
        var submitRegister = function(){
            if ($('.register-form').validate().form()) {
                $.ajax({
                    url: '<?php echo $register; ?>',
                    data: $('.register-form').serialize(),
                    method: 'post',
                    success: function(data){
                        var response = jQuery.parseJSON(data);
                        if(response.redirect != undefined){
                            location.href = response.redirect;
                        }else{
                            $('.alert-danger', $('.register-form')).html(response.warning);
                            $('.alert-danger', $('.register-form')).show();
                        }
                    }
                });
    //                    $('.login-form').submit(); //form validation success, call ajax form submit
            }
        }
    }

    return {
        //main function to initiate the module
        init: function() {

            handleLogin();
            handleForgetPassword();
            handleRegister();

        }

    };

}();

jQuery(document).ready(function() {
    Login.init();
});
</script>
<style type="text/css">
    .login .content{background-color:#fff;-webkit-border-radius:7px;-moz-border-radius:7px;-ms-border-radius:7px;-o-border-radius:7px;border-radius:7px;width:400px;margin:40px auto 10px;padding:10px 15px 15px;overflow:hidden;position:relative}
    .login .content h3{color:#4db3a5;text-align:center;font-size:28px;font-weight:400!important;margin-top: 5px;}
    .login .content h4{color:#555}
    .login .content .hint{color:#999;padding:0;margin:15px 0 7px}
    .login .content .forget-form,.login .content .login-form{padding:0;margin:0}
    .login .content .form-control{background-color:#dde3ec;height:43px;color:#8290a3;border:1px solid #dde3ec}
    .login .content .form-control:active,.login .content .form-control:focus{border:1px solid #c3ccda}
    .login .content .form-control::-moz-placeholder{color:#8290a3;opacity:1}
    .login .content .form-control:-ms-input-placeholder{color:#8290a3}.login .content .form-control::-webkit-input-placeholder{color:#8290a3}
    .login .content select.form-control{padding-left:9px;padding-right:9px}.login .content .forget-form,.login .content .register-form{display:none}
    .login .content .form-title{font-weight:300;margin-bottom:25px}
    .login .content .form-actions{clear:both;border:0;border-bottom:1px solid #eee;padding:10px 30px 24px;margin-left:-30px;margin-right:-30px}
    .login .content .form-actions>.btn{margin-top:-2px}.login-options{margin-top:30px;margin-bottom:30px;overflow:hidden}
    .login-options h4{float:left;font-weight:600;font-size:15px;color:#7d91aa!important}
    .login-options .social-icons{float:right;padding-top:3px}
    .login-options .social-icons li a{border-radius:15px!important;-moz-border-radius:15px!important;-webkit-border-radius:15px!important}
    .login .content .form-actions .checkbox{margin-left:0;padding-left:0}.login .content .forget-form .form-actions{border:0;margin-bottom:0;padding-bottom:20px}
    .login .content .register-form .form-actions{border:0;margin-bottom:0;padding-bottom:0}
    .login .content .form-actions .btn{margin-top:1px;font-weight:600;padding:10px 20px!important}
    .login .content .form-actions .btn-default{font-weight:600;padding:10px 25px!important;color:#6c7a8d;background-color:#fff;border:none}
    .login .content .form-actions .btn-default:hover{background-color:#fafaff;color:#45b6af}
    .login .content .forget-password{font-size:14px;float:right;display:inline-block;margin-top:10px}
    .login .content .check{color:#8290a3}.login .content .rememberme{margin-left:8px}
    .login .content .create-account{margin:0 -40px -15px;padding:15px 0 17px;text-align:center;background-color:#6c7a8d;-webkit-border-radius:0 0 7px 7px;
-moz-border-radius:0 0 7px 7px;-ms-border-radius:0 0 7px 7px;-o-border-radius:0 0 7px 7px;border-radius:0 0 7px 7px}
.login .content .create-account>p{margin:0}.login .content .create-account p a{font-weight:600;font-size:14px;color:#c3cedd}
.login .content .create-account a{display:inline-block;margin-top:5px}.login .copyright{text-align:center;margin:0 auto 30px 0;padding:10px;color:#7a8ca5;
font-size:13px}
.padding-2{padding: 0 2px;margin-bottom: 10px;}
.social-icons li .facebook {
    background: url(image/social/facebook.png) no-repeat;
}
.social-icons li .twitter {
    background: url(image/social/twitter.png) no-repeat;
}
.social-icons li .googleplus {
    background: url(image/social/googleplus.png) no-repeat;
}
.social-icons {
    padding: 0;
    margin: 0;
}
.social-icons li .linkedin {
    background: url(image/social/linkedin.png) no-repeat;
}
.social-icons li {
    float: left;
    display: inline;
    list-style: none;
    margin-right: 5px;
    margin-bottom: 5px;
    text-indent: -9999px;
}
.social-icons li>a {
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -ms-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 2px;
    width: 28px;
    height: 28px;
    display: block;
    background-position: 0 0;
    background-repeat: no-repeat;
    transition: all .3s ease-in-out;
    -o-transition: all .3s ease-in-out;
    -ms-transition: all .3s ease-in-out;
    -moz-transition: all .3s ease-in-out;
    -webkit-transition: all .3s ease-in-out;
}
.social-icon-color {
    opacity: .7;
    background-position: 0 -38px!important;
}
@media (max-width:440px){
    .login .content,.login .logo{margin-top:10px}.login .content{width:280px}
.login .content h3{font-size:22px}.forget-password{display:inline-block;margin-top:20px}
.login-options .social-icons{float:left;padding-top:3px}.login .checkbox{font-size:13px}
}
</style>

</body></html>