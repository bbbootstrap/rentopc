<?php

  require_once(DIR_SYSTEM . 'pavothemes/loader.php');
  $config = $this->registry->get('config');
  $helper = ThemeControlHelper::getInstance( $this->registry, $config->get('config_template') );
  $layoutID = 1 ;

?>
 <?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>

<?php if( !($helper->getConfig('enable_pagebuilder') && $helper->isHomepage())  ){ ?>

<?php
  $blockid = 'mass_bottom';
  $blockcls = '';
  $modules = $helper->getModulesByPosition( $blockid );
  $ospans = array(1=>12, 2=>12);
  $tmcols = 'col-sm-12 col-xs-12';
  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
?>

<?php } ?>


<footer id="footer">

  <?php

  $blockid = 'footer_center';
  $blockcls = '';
  $modules = $helper->getModulesByPosition( $blockid );
  $ospans = array();
  if( count($modules) &&  $helper->getConfig('enable_footer_center') ){
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );

  } else { ?>
  <!--
  <div class="footer-center">
    <div class="container">
      <div class="inner">
        <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
          <div class="box">
            <div class="box-heading"><span><?php echo $text_service; ?></span></div>
            <ul class="list">

              <li><a href="<?php echo "index.php?route=product/category&path=75"; ?>"><?php echo "Redemption Center"; ?></a></li>
              <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
              <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
               <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
              <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
            </ul>
          </div>
        </div>

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
          <div class="box">
            <div class="box-heading"><span><?php echo $text_account; ?></span></div>
            <ul class="list">
              <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
              <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
              <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
            </ul>
          </div>
        </div>


        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
          <div class="box">
            <div class="box-heading"><span><?php echo "Information"; ?></span></div>
            <ul class="list">

            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <li><a href="#"><?php echo "Blog"; ?></a></li>
              <li><a href="free-delivery"><?php echo "Delivery Information"; ?></a></li>
              <li><a href="privacy-policy"><?php echo "Privacy policy"; ?></a></li>
              <li><a href="terms-conditions"><?php echo "Terms & conditions"; ?></a></li>


            </ul>
          </div>
        </div>



         <?php if( $content=$helper->getLangConfig('widget_contact_us') ) {?>
          <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
            <div class="box contact-us">
              <div class="box-heading"><span><?php echo $objlang->get('text_contact_us'); ?></span></div>
              <?php echo $content; ?>
            </div>
          </div>
          <?php } ?>

    </div>
    </div>
     </div>
   </div>

 -->



<?php  } ?>


  <!-- <?php
    $blockid = 'footer_bottom';
    $blockcls = '';
    $ospans = array();
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
  ?> -->

<style type="text/css">


  @charset "utf-8";
@import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');



   .bbb_shopbybrand_title{

    margin-bottom: 6px;
    margin-top: -12px;
   }

   .bbb_bbbrands_nav_container{
        position: absolute;
    right: 1px;
    bottom: 15px;
   }

  .middleTop {
    margin: 0 auto;
    padding: 23px 0;
    max-width: 100%;
    min-width: 100%;
    background-color: #000000db
}

.middle-heading {
    /*font-family: "font-bold";*/
    font-family: 'Rubik', sans-serif;
    font-size: 15px;
    color: #fff;
    font-weight: 600;
    margin-left: 38px;
    padding-bottom: 15px;
    text-transform: uppercase
}

.middle-content {
    font-size: 12px;
    color: #777 !important;
    list-style-type: none;
    max-width: 210px;
    margin-left: 36px;
    font-weight: 400;
    font-family: 'Rubik', sans-serif;
}

.middleContent-footer .middleTop div {
    box-sizing: border-box
}

.middleBottom {
    background-color: #000;
    text-align: center;
    /*border-top: 1px solid #e2e2e2;
    border-bottom: 1px solid #e2e2e2;*/
    padding: 17px 0
}

.middleBottomFooter {
    text-transform: uppercase;
    font-size: 14px;
    color: #344c55;
    text-align: left;
    background-color: #000
}

.underLineOnHover {
    color: #fff
}

.bottomfooter {
    background-color: #000
}

.copyright {
    color: #fff
}

.address {
    color: #fff;
    font-size: 12px;
    list-style-type: none;
    max-width: 210px;
    font-weight: 400;
    font-family: 'Rubik', sans-serif;
}


/*Affiliate program*/

.strip1 {
    background-color: blue;
    height: 63px
}

.strip2 {
    background-color: #E0E0E0;
    height: 235px;
    margin-bottom: 21px;
}

h2 {
    color: #fff
}


.affiliate {
    color: #fff !important;
    font-weight: 300;
    font-size: 20px !important;
    margin-top: 13px !important;
}

.messanger-btn {
    color: #fff;
    background-color: #2046f5 !important;
    border-color: #2046f5 !important;
    margin-top: 60px;
}

.messanger-btn:hover {
    color: #fff;
    background-color: #4f6df5;
    border-color: #4f6df5
}

.messanger-btn:focus {
    color: #fff;
    background-color: #2046f5;
    border-color: #2046f5
}



.image-gap {
    margin-bottom: 2px
}


.coupon-text {
    color: #fff !important;
    font-size: 26px !important;
    margin-top: 17px !important;
}


.vl {
    border-left: 1px solid #fff;
    height: 100%;
}


/*Scroll to top*/

.scroll {
    color: #fff;
    margin-top: 100px
}

#toTopBtn {
        position: fixed;
    bottom: 100px;
    right: 27px;
    z-index: 98;
    padding: 21px;
    background-color: #2196F3;
}

.js .cd-top--fade-out {
    opacity: .5
}

.js .cd-top--is-visible {
    visibility: visible;
    opacity: 1
}

.js .cd-top {
    visibility: hidden;
    opacity: 0;
    transition: opacity .3s, visibility .3s, background-color .3s
}

.cd-top {
    position: fixed;
    bottom: 20px;
    bottom: var(--cd-back-to-top-margin);
    right: 20px;
    right: var(--cd-back-to-top-margin);
    display: inline-block;
    height: 40px;
    height: var(--cd-back-to-top-size);
    width: 40px;
    width: var(--cd-back-to-top-size);
    box-shadow: 0 0 10px rgba(0, 0, 0, .05) !important;
    background: url(https://res.cloudinary.com/dxfq3iotg/image/upload/v1571057658/cd-top-arrow.svg) no-repeat center 50%;
    background-color: hsla(5, 76%, 62%, .8);
    background-color: hsla(var(--cd-color-3-h), var(--cd-color-3-s), var(--cd-color-3-l), 0.8)
}

.height {
    height: 3000px
}


</style>




<div class="middleTop row">
    <div class="footer-inner">
        <div class="col-md-2">
            <div class="middle-heading">Policy Info</div>
            <ul class="middle-content ">
                <li><a class="underLineOnHover" href="privacy-policy" data-abc="true">Privacy Policy</a></li>
                <li><a class="underLineOnHover" href="terms-of-sale" data-abc="true">Terms of Sale</a></li>
                <li><a class="underLineOnHover" href="terms-of-use" data-abc="true">Terms of Use</a></li>
                <li><a class="underLineOnHover" href="shipping-policy" data-abc="true">Shipping policy</a></li>
                <li><a class="underLineOnHover" href="warranty-policy" data-abc="true">Warranty policy</a></li>
                <li><a class="underLineOnHover" href="replacement-policy" data-abc="true">Replacement policy</a></li>

            </ul>
        </div>
        <div class="col-md-2">
            <div class="middle-heading">Company</div>
            <ul class="middle-content">
                <li><a class="underLineOnHover" href="about-us" data-abc="true">About Us</a></li>
                <li><a class="underLineOnHover" href="mission" data-abc="true">Mission</a></li>
                <li><a class="underLineOnHover" href="vision" data-abc="true">Vision</a></li>
                <li><a class="underLineOnHover" href="#" data-abc="true">Blog</a></li>
                <li><a class="underLineOnHover" href="#" data-abc="true">Sitemap</a></li>
            </ul>
        </div>
        <div class="col-md-2">
            <div class="middle-heading">Grow with us</div>
            <ul class="middle-content">

                <li><a class="underLineOnHover" href="affiliates" data-abc="true">Be an Affiliate</a></li>
                <li><a class="underLineOnHover" href="redemption-center" data-abc="true">Redemption center</a></li>

            </ul>
        </div>
        <div class="col-md-2">
            <div class="middle-heading">Need Help ?</div>
            <ul class="middle-content">
                <li><a class="underLineOnHover" href="faq" data-abc="true">FAQ</a></li>
                <li><a class="underLineOnHover" href="contact-us" data-abc="true">Contact Us</a></li>
                <li><a class="underLineOnHover" href="#" data-abc="true">Feed Back</a></li>
                <li><a class="underLineOnHover" href="why-rentopc" data-abc="true">Why rentopc</a></li>
            </ul> <i class="originalalityfooterIcon footerIconsImg hide"></i>
        </div>
        <div class="col-md-4">
            <div class="middle-heading" style="margin-left: 0px;">About us</div> <span class="address">Balaji Peripherals Pvt. Ltd.<br>
Plot No. A5, 1st Floor,
Dsidc Complex,jhilmil Industrial Area, Shahdara, Delhi - 110095<br>
GSTIN/UIN :07AAACD4689B1ZS<br>
Phone No. - 7011898220<br>
Contact Person : Teena</span>
            <div class="m-t-20">
                <!-- <h5 style="color: #EF5350;">Social connect</h5>  -->
                <a target="_blank" href="https://www.facebook.com/rentopcPC">
                <img src="https://img.icons8.com/color/24/000000/facebook.png">
                </a>
                <a target="_blank" href="https://www.instagram.com/rentopc/?hl=en">
                <img src="https://img.icons8.com/office/20/000000/instagram-new.png">
              </a>
                <a target="_blank" href="https://twitter.com/rentopc">
                <img src="https://img.icons8.com/color/24/000000/twitter-squared.png">
                </a>
            </div>
        </div>
    </div>
</div>

<div class="clearfix bottomfooter">
    <div class="container">
        <div class="row">
            <div class="col-md-6" style="margin-top:10px;"> <span class="copyright">Copyright © 2019, rentopc.com All Rights Reserved</span> </div>
            <div class="col-md-6">
                <div class="pull-right">


                <img class="pull-right" src="https://img.icons8.com/officel/40/000000/mastercard.png">
                <img class="pull-right" src="https://img.icons8.com/color/40/000000/visa.png">
                <img class="pull-right" src="https://img.icons8.com/color/40/000000/amex.png">
                <img class="pull-right" src="https://img.icons8.com/color/40/000000/discover.png">
                <img class="pull-right" src="https://i.imgur.com/20Ajuew.png">
                <img class="pull-right" src="https://i.imgur.com/PkW1IZx.png">




                </div>
            </div>
        </div>
    </div>
</div>


<a href="#" id="toTopBtn" class="cd-top text-replace js-cd-top cd-top--is-visible cd-top--fade-out" data-abc="true"></a>













</footer>

<!-- <div id="powered">
  <div class="container">
    <div class="inner clearfix">
      <div class="copyright pull-left">
        <?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
          <?php echo $helper->getConfig('copyright'); ?>
        <?php } else { ?>
          <?php echo $powered; ?>.
        <?php } ?>

      </div>
      <?php if( $content=$helper->getLangConfig('widget_paypal') ) {?>
        <div class="paypal pull-right">
            <?php echo $content; ?>
        </div>
        <?php } ?>


      </div>
    </div>
  </div> -->
<?php if( $helper->getConfig('enable_paneltool',0) ){  ?>
  <?php  echo $helper->renderAddon( 'panel' );?>
<?php  } ?>

</div>
  <?php  echo $helper->renderAddon( 'offcanvas' );?>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5bdfdbe90c903357628ccede/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

<!-- <script async="async" src="https://static.mobilemonkey.com/js/214338252834914.js"></script> -->

</div>

<!-- <?php if ($config_whatsappid) { ?>
<div class="inova">
<a class="inova whatsapp" href="https://api.whatsapp.com/send?phone=<?php echo $config_whatsappid; ?>" type="image/x-icon" />
<button type="button" class="btn btn-success">
<i class="fa fa-whatsapp"></i></button></a></div>
<?php } ?> -->

<script type="text/javascript">
  $(document).ready(function() {
$(window).scroll(function() {
if ($(this).scrollTop() > 20) {
$('#toTopBtn').fadeIn();
} else {
$('#toTopBtn').fadeOut();
}
});

$('#toTopBtn').click(function() {
$("html, body").animate({
scrollTop: 0
}, 1000);
return false;
});
});
</script>

</body></html>
