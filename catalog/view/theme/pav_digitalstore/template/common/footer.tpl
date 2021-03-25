<?php 
  /*
  * @package Framework for Opencart 2.0
  * @version 2.0
  * @author http://www.pavothemes.com
  * @copyright Copyright (C) Feb 2013 PavoThemes.com <@emai:pavothemes@gmail.com>.All rights reserved.
  * @license   GNU General Public License version 2
  */
  require_once(DIR_SYSTEM . 'pavothemes/loader.php');
  $config = $this->registry->get('config'); 
  $helper = ThemeControlHelper::getInstance( $this->registry, $config->get('config_template') );
  $layoutID = 1 ;

?>
 <?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>
<!-- 
  $ospans: allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
 -->

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
    $blockid = 'footer_top';
    $blockcls = '';
    $modules = $helper->getModulesByPosition( $blockid ); 
    $ospans = array();
   if( count($modules) &&  $helper->getConfig('enable_footer_center') ){
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );

  } else { ?>
   <div class="footer-top">
    <div class="container">
      <div class="inner">
        <div class="row">
          <?php if( $content=$helper->getLangConfig('widget_social') ) {?>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <?php echo $content; ?>
            </div>
          <?php } ?>
        </div>
      </div>
    </div>     
   </div> 
<?php } ?> 

  <?php
  /**
   * Footer Center Position
   * $ospans allow overrides width of columns base on thiers indexs. format array( column-index=>span number ), example array( 1=> 3 )[value from 1->12]
   */
  $blockid = 'footer_center';
  $blockcls = '';
  $modules = $helper->getModulesByPosition( $blockid ); 
  $ospans = array();
  if( count($modules) &&  $helper->getConfig('enable_footer_center') ){
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );

  } else { ?>
  
  <div class="footer-center">
    <div class="container">
      <div class="inner">
        <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 column">
          <div class="box">
            <div class="box-heading"><span><?php echo $text_service; ?></span></div>
            <ul class="list">
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
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
              <!--
              <li><a href="about-us"><?php echo "About us"; ?></a></li>
            -->
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
     </div> </div> 
<?php  } ?> 


  <?php
    $blockid = 'footer_bottom';
    $blockcls = '';
    $ospans = array();
    require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
  ?>




</footer>
 
<div id="powered">
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
  </div>
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


</div>

<?php if ($config_whatsappid) { ?>
<div class="inova">
<a class="inova whatsapp" href="https://api.whatsapp.com/send?phone=<?php echo $config_whatsappid; ?>" type="image/x-icon" />
<button type="button" class="btn btn-success">
<i class="fa fa-whatsapp"></i></button></a></div>
<?php } ?>

</body></html>