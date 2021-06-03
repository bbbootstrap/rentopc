<?php echo $header; ?>
<div class="container">
    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
  <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>
		<?php endif; ?>

   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content"><?php echo $content_top; ?>

              <!-- <?php echo "Order ID - ".$order_id; ?>
              <?php echo "customer_email - ".$customer_email; ?> -->

<?php if(isset($customer_email)){ ?>
<script src="https://apis.google.com/js/platform.js?onload=renderOptIn" async defer></script>
<script>
  window.renderOptIn = function() {
    window.gapi.load('surveyoptin', function() {
      window.gapi.surveyoptin.render(
        {
          // REQUIRED FIELDS
          "merchant_id": 144106714,
          "order_id": "<?php echo $order_id; ?>",
          "email": "<?php echo $customer_email; ?>",
          "delivery_country": "IN",
          "estimated_delivery_date":"<?php echo $order_date ?>",
          // OPTIONAL FIELDS
          "products": [{"gtin":"GTIN1"}, {"gtin":"GTIN2"}]
        });
    });
  }
</script>

<?php } ?>

      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
   </section>
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>
<?php echo $footer; ?>
