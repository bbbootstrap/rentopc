<?php
 $helper =  ThemeControlHelper::getInstance( $this->registry );
echo $header; ?>


<style type="text/css">

.badge23 {
    display: inline-block;
    padding: 0.30em .4em;
    font-size: 75%;
    font-weight: 300;
    line-height: 1;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25rem;
    color: #fff;
    background-color: #28a745;
}

.rating-review {
    color: #5b5b5b;
        font-size: 12px;

}

.product_price {
    display: inline-block;
    font-size: 30px;
    font-weight: 400;
    margin-top: 4px;
    margin-bottom: 0px;
    color: #080808;
    clear: left;
}

.list-group-item {
    position: relative;
    display: block;
    background-color: #fff;
    border: 1px solid rgba(0,0,0,.125);
    padding: 14px;


}


.my-list-group-item{
  margin-bottom: 10px !important;
}

.seperator{

            border-top: 1px solid #dfdfdf !important;
}

.p-title{

      font-size: 22px !important;
    font-weight: 500 !important;
    font-family: none !important;
    color: #080808;
}


.list-inline {
    padding-left: 0;
    list-style: none;
}

.list-inline>li {
    font-size: 13px;
}


.small, small {
    font-size: 80%;
    font-weight: 400;
}

.mb-14{
    margin-bottom: 5px;
}


.d-flex {
    display: -webkit-box!important;
    display: -ms-flexbox!important;
    display: flex!important;
}

.justify-content-between {
    -webkit-box-pack: justify!important;
    -ms-flex-pack: justify!important;
    justify-content: space-between!important;
}


.align-items-center {
    -webkit-box-align: center!important;
    -ms-flex-align: center!important;
    align-items: center!important;
}




/*Carousel slider*/




.left_50 {
  width: 600px;
  margin: 0 auto;
}

#owl-example {
  border: 1px solid #000;
}

.owl-nav {
  position: absolute;
  top: calc(50% - 21px);
  width: 107%;
  left: -21px;
}

.owl-nav div {
  position: absolute;
  top: 50%;
  border: 1px solid #000;
  width: 40px;
  height: 40px;
  border-radius: 50%;
}

.owl-prev {
  left: 0;
  display: flex;
  background: #fff;
}

.owl-next {
  right: 0;
  display: flex;
  background: #fff;
}

.owl-prev i,
.owl-next i {
  margin: auto;
}

#owl-example .owl-item {
  box-sizing: border-box;
  padding: 40px;
  text-align: center;
}

#owl-example .owl-item p {
  font-size: 16px;
}

.breadcrumb {

    margin-bottom: 0px !important;

  }

 .breadcrumb li:last-child a {
    color: #2874ef !important;
}




</style>

<link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css" rel="stylesheet" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>

<script type="text/javascript">
  $(document).ready(function() {
  $("#owl-example").owlCarousel({
    navigation: true, // Show next and prev buttons
    slideSpeed: 300,
    margin: 10,
    paginationSpeed: 400,
    autoplay: false,
    items: 1,
    itemsDesktop: false,
    itemsDesktopSmall: false,
    itemsTablet: false,
    itemsMobile: false,
    loop: true,
    nav: true,
    navText: ["<i class='fa fa-angle-left' aria-hidden='true'></i>", "<i class='fa fa-angle-right' aria-hidden='true'></i>"]
  });
});
</script>


<div class="container-fluid" style="    margin-top: -42px;">

  <div class="row">

      <div class="col-md-12">

        <img alt="banner rentopc 1" src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1575715085/renotpc/laptop_banner.jpg">

      </div>



    </div>


</div>

<div class="container-fluid">

  <div class="row">

    <div class="col-md-12">

      <div class="wrapper center-block" style="    margin-right: 10px;">


        <div class="filters-text" style="    margin-bottom: -5px;">

<span class="filter-span"><ol class="breadcrumb">
                              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
<?php } ?>
                              <!-- <li class="breadcrumb-item"><a href="#">Home</a></li>
                              <li class="breadcrumb-item active"><a href="#">Products</a></li> -->

                           </ol></span>


</div>



     </div>

    </div>

  </div>

</div>



<div class="container-fluid">





    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
  <!-- <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?> -->
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>
		<?php endif; ?>

   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content">

    <!-- <?php echo $content_top; ?> -->
      <!-- <h1><?php echo $heading_title; ?></h1>
      <?php if ($thumb || $description) { ?>
      <div class="category-info clearfix hidden-xs hidden-sm">
        <?php if ($thumb) { ?>
          <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive" /></div>
          <?php } ?>
          <?php if ($description) { ?>
          <div class="category-description wrapper">
            <?php echo $description; ?>
          </div>
          <?php } ?>
      </div>
      <?php } ?> -->

      <?php if( true &&  $categories = $helper->getCategoriesById() ){   ?>
	   <div class="subcategories panel panel-default">
			<h2>
			  <?php echo $text_refine; ?>
		   </h2>
			  <div class="panel-body">

					<?php $col=6; $i=0; $ncol = floor(12/$col); foreach( $categories as $category ){  $i++; ?>
            <?php if($i%$col==1) { ?>
            <div class="row">
            <?php } ?>
						<div class="col-lg-<?php echo $ncol; ?> col-md-<?php echo $ncol; ?> col-sm-<?php echo $ncol; ?> col-xs-12"><div class="category-item">
							<?php if( $category['thumb'] ){ ?>
								   <div class="image">
                      <a href="<?php echo $category['href']; ?>">
                        <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
                      </a>
                  </div>
							<?php } ?>
							  <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
						</div></div>
            <?php if( $i%$col==0 || $i==count($categories) ){ ?>
            </div>
            <?php } ?>
					<?php } ?>



        </div>
        <?php } else if ($categories) { ?>
          <div class="refine-search">
          <h3><?php echo $text_refine; ?></h3>
            <?php if (count($categories) <= 5) { ?>
            <div class="row">
              <div class="col-sm-3">
                <ul>
                  <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
            </div>
            <?php } else { ?>
            <div class="row">
              <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
              <div class="col-sm-3">
                <ul>
                  <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                  <?php } ?>
                </ul>
              </div>
              <?php } ?>
            </div>
            <?php } ?>
         </div>
      <?php } ?>
      </div>
      <?php if ($products) { ?>

      <div class="container">

           <div class="row">

               <div class="col-lg-12 mx-auto">

                   <ul class="list-group shadow">


                    <?php

                      foreach ($products as $product) {

                    ?>

                    <a href="<?php echo $product['href']; ?>">
                      <li class="list-group-item my-list-group-item">

                        <div class="row">

                           <div class="col-md-3 text-center">

                            <img src="<?php echo $product['thumb']; ?>" alt="rentopc.com banner 3" width="250" height="200">

                           </div>

                           <div class="col-md-9">

                            <h4 class="mt-0 p-title" style="margin-bottom: .5rem;"><?php echo $product['name']; ?></h4>
                            <div class="product-rating mb-14">
                                <span class="badge23"><i class="fa fa-star"></i> 5 Star</span>
                                <span class="rating-review mb-1"><?php echo $product['rating']; ?> Ratings </span>
                            </div>





                            <span class="product_price price-new"><?php echo $product['price']; ?> </span>

                            <div class="product-rating" style="margin-bottom: 1px;margin-top: 1px;">

                                <!-- <span class="rating-review mb-1"></span> -->

                                  <?php if( $product['quantity'] <= 0 ){ ?>

                                    <span class="rating-review mb-2" style="color: red;font-size: 15px;">Out of stock</span>

                                       <?php  } else{  ?>

                                        <span class="rating-review mb-2" style="color:green !important;font-size: 15px;">In stock</span>

                                        <?php } ?>

                               </span>
                            </div>
                            <hr class="mb-2 mt-1 seperator">

              <div class="d-flex align-items-center justify-content-between mt-1">

                <?php

                if ($product['attribute_groups']) { ?>

                  <ul class="list-inline small" style="    display: inline-grid;">

                    <?php


                         foreach ($product['attribute_groups'] as $attribute_group) {



                          if ($attribute_group['attribute_group_id'] == 18){


                          $single_attribute = $attribute_group['attribute'];


                          foreach($single_attribute as $attribute){




                ?>


                <li><img src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png" alt="<?php echo $attribute['text']; ?>"> <?php echo $attribute['text']; ?></li>

                  <?php

                          }


                        }}




                          ?>


                     </ul>

        <?php } ?>

                <!-- <ul class="list-inline small" style="    display: inline-grid;">
                  <li><img alt="rentopc.com" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Above price is for 4gb/500gb </li>
                  <li><img alt="rentopc.com" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Inclusive of taxes</li>
                  <li><img alt="rentopc.com" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Reward points on each purchase</li>

                </ul> -->



                <?php

                if ($product['attribute_groups']) { ?>

                  <ul class="list-inline small" style="    display: inline-grid;">

                    <?php


                         foreach ($product['attribute_groups'] as $attribute_group) {



                          if ($attribute_group['attribute_group_id'] == 17){


                          $single_attribute = $attribute_group['attribute'];


                          foreach($single_attribute as $attribute){




                ?>


                <li><img src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png" alt="<?php echo $attribute['text']; ?>"> <?php echo $attribute['text']; ?></li>

                  <?php

                          }


                        }}




                          ?>


                     </ul>

        <?php } ?>

              </div>
            </div>



                           </div>


                         </li>
                         </a>

                      <?php } ?>





                   </ul>

               </div>

           </div>

           <div class="paging clearfix">
  <div class="pull-left"><?php echo $pagination; ?></div>
  <div class="pull-right"><?php echo $results; ?></div>
</div>


       </div>

      <?php } ?>

        <?php if (!$categories && !$products) { ?>
        <div class="content"><div class="wrapper"><?php echo $text_empty; ?></div></div>
        <div class="buttons">
          <div class="right"><a href="<?php echo $continue; ?>" class="button btn btn-default"><?php echo $button_continue; ?></a></div>
        </div>
        <?php } ?>


      <?php echo $content_bottom; ?>
   </section>
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>


<script type="text/javascript">
$(document).on('change','#accordion',function(e){
  e.preventDefault();
  filter = [];

  $('input[name^=\'filter\']:checked').each(function(element) {

      filter.push(this.value);
  });
   urls = window.location.href;
   location = urls+'&filter=' + filter.join(',');
//   var url = 'index.php?route=product/category&path=64_83';
//  var location = url+'&filter=' + filter.join(',');
//
//  alert(location);
//
//  $.ajax({
//    type: "POST",
//    location: location,
//    success: function(data)
//    {
//       console.log(data);
//       $("#sidebar-main").html(data);
//    }
//  });
//  console.log;
// return false;
});



$(document).ready(function(){
  $('input[name^=\'filter\']:checked').each(function(element) {

      //var pid = this.parentNode.id;
       id = $(this).closest('.panel-collapse').attr('id');
    //  alert($(this).closest('.panel-collapse').attr('id'));
       $("#"+id).addClass('in');
    //  element.classList.add("my-class");

  });
});

</script>

<?php echo $footer; ?>
