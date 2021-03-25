<?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>
<div class="product-block" itemtype="http://schema.org/Product" itemscope>

   <?php if ($product['thumb']) { ?>
      <div class="image">
      	<?php if( $product['special'] ) {   ?>
    	<span class="product-label-special label"><?php echo $objlang->get( 'text_sale' ); ?></span>
    	<?php } ?>
    	<a class="img" href="index.php?route=product/product_redeem&path=75&product_id=<?php echo $product['product_id']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>


    	<?php if ($quickview) { ?>
		<a class="pav-colorbox hidden-sm hidden-xs" href="index.php?route=product/product_redeem&path=75&product_id=<?php echo $product['product_id']; ?>">
			<span class='fa fa-eye'></span><?php echo "Redeem"; ?></a>
		<?php } ?>


      </div>
    <?php } ?>

	<div class="product-meta">
			<h4 class="name"><a href="index.php?route=product/product_redeem&path=75&product_id=<?php echo $product['product_id']; ?>"><?php echo $product['name']; ?></a></h4>




			<?php if ($product['points']) { ?>
			<div class="price" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
				<span class="price-new"><?php echo $product['points']; ?> Credits</span>
				<meta content="<?php ?>" itemprop="priceCurrency">
			</div>
			<?php } ?>


	</div>

</div>
