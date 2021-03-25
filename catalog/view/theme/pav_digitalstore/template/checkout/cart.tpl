<?php echo $header; ?>
<div class="container">
  <style>
   #empty-cart{
     cursor: pointer;
   }
   #empty-cart:hover{
     cursor: pointer;
     color: #fff;
   }
  </style>
    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
  <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>
		<?php endif; ?>

   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>

        <!-- <span id="empty-cart" class="pull-right" onclick="emptycart();">Empty cart</span> -->
        <button id="empty-cart" class="btn btn-success btn-sm pull-right" onclick="emptycart();"><i class="fa fa-shopping-cart mr-2"></i> Empty cart</button>
      </h1>
      <!-- <h1>fgfgfd</h1>
      <div class="pull-left">

        <h1>fgfgfd</h1>

      </div> -->

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-center"><?php echo $column_quantity; ?> <span id="quantity_message" style="color:red;"></span></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
                <td class="text-center">Remove</td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <td class="text-left"><?php echo $product['model']; ?></td>
                <td class="text-center"><div class="input-group btn-block" style="max-width: 200px;">


                    <span class="input-group-btn p-quanity-cart-adder">
                    <button cart_id_btn="<?php echo $product['cart_id']; ?>" type="button" data-toggle="tooltip" title="<?php echo "-"; ?>" class="btn btn-primary add-down1 add-action1"><i class="fa fa-minus"></i></button>

                    <!-- <button type="button" data-toggle="tooltip" title="<?php echo "-"; ?>" onclick="quantity_update('<?php echo $product['cart_id']; ?>');" class="btn btn-primary add-down1 add-action1"><i class="fa fa-minus"></i></button> -->

                    <input type="text" id="cart_id<?php echo $product['cart_id']; ?>" key="<?php echo $product['cart_id']; ?>" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control cart-input ml-1" style="width:35px;min-width:35px; margin-right:3px; background-color:#eee;" readonly />
                    <button cart_id_btn="<?php echo $product['cart_id']; ?>" type="button" data-toggle="tooltip" title="<?php echo "+"; ?>" class="btn btn-primary add-up1 add-action1"><i class="fa fa-plus"></i></button>

                  </span>





                </td>
                <td class="text-right"><?php echo $product['price']; ?></td>
                <td class="text-right"><?php echo $product['total']; ?></td>
                <td class="text-center">
                  <?php if($product['bundled'] ==1 ){ ?>
                      <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>"  onclick="comboremove('<?php echo $product['cart_id']; ?>');" class="btn btn-danger"><i class="fa fa-times-circle"></i></button></span></div></td>

                <?php }else{ ?>
                        <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <?php } ?>
                </td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($coupon || $voucher || $reward || $shipping) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
      <?php } ?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>

            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
      <div class="buttons">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right"><a href="<?php echo $checkout; ?>" class="button"><?php echo $button_checkout; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
   </section>
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>


<script>

// $('#combo_remove').on('click', function() {
//
//    alert("Hi");
//
// });

function emptycart(){

  $.ajax({
    url: 'index.php?route=checkout/cart/empty',
    type: 'post',
    // data: 'key=' + key,
    // dataType: 'json',
    beforeSend: function() {

      $('#cart > button').button('loading');
    },
    success: function(json) {


      $('#cart > button').button('reset');

      $('#cart-total').html(json['total']);

      if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
        location = 'index.php?route=checkout/cart';
      } else {
        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });

}



function comboremove(key){

  $.ajax({
    url: 'index.php?route=checkout/cart/remove_combo',
    type: 'post',
    data: 'key=' + key,
    dataType: 'json',
    beforeSend: function() {

      $('#cart > button').button('loading');
    },
    success: function(json) {

      $('#cart > button').button('reset');
      $('#cart-total').html(json['total']);
      if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
        location = 'index.php?route=checkout/cart';
      } else {
        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });

}


// $(".cart-input").on("input propertychange", function() {
//    //alert($(this).val());
//    var selectedCustomValue = $(".cart-input").attr("key");
//    //alert(selectedCustomValue);
//    var cart_quantity = $(this).val();
//   if(cart_quantity <= 0 || cart_quantity > 5 ){
//
//     //alert("");
//     $("#quantity_message").html("(Quantity Not allowed)");
//   }else{
//     quantity_update(selectedCustomValue);
//   }
//
//
//
// });



$(".p-quanity-cart-adder button").click( function(){
    if( $(this).hasClass('add-down1') ) {

      var cart_id = $(this).attr('cart_id_btn');

      var qty = $("#cart_id"+cart_id).val();

      if( parseInt(qty)  > 1 ) {
        //  $("input",'.p-quanity-adder').val( parseInt($("[name=quantity]",'.p-quanity-adder').val()) - 1 );
        $("#cart_id"+cart_id).val( parseInt(qty) - 1 );
        quantity_update(cart_id);
      }

      // //  $("[name=quantity]",'.p-quanity-adder').val( parseInt($("[name=quantity]",'.p-quanity-adder').val()) + 1 );
      //  $("#quantity_input").val( parseInt($("#quantity_input").val()) + 1 );
      //
      //  $(".updateqty").text($("#quantity_input").val());
      //  // var rewards = $("#product_reward").val();
      // var rewards = <?php echo $reward; ?>;
      //  var quanity_products = $("#quantity_input").val();
      //
      //  total_rewards = rewards * quanity_products;
      //  //alert(total_rewards+"---------"+quanity_products);
      //  // $("#quantity_input").text($("#quantity_input").val() * $("#product_reward").val());
      //   $("#product_reward").val(total_rewards);
      //

    }else {
      var cart_id = $(this).attr('cart_id_btn');

      var qty = $("#cart_id"+cart_id).val();
      $("#cart_id"+cart_id).val( parseInt(qty) + 1 );

      quantity_update(cart_id);
        // if( parseInt($("[name=quantity]",'.p-quanity-adder').val())  > 1 ) {
        //   //  $("input",'.p-quanity-adder').val( parseInt($("[name=quantity]",'.p-quanity-adder').val()) - 1 );
        //   $("[name=quantity]").val( parseInt($("[name=quantity]").val()) - 1 );
        //   $(".updateqty").text($("#quantity_input").val());
        //    $("#quantity_input").text($("#quantity_input").val() * $("#product_reward").val());
        // }


    }
});


function quantity_update(key){

  quantity = $("#cart_id"+key).val();
  $.ajax({
    url: 'index.php?route=checkout/cart/edit',
    type: 'post',
    data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
  //  data: {'key': key, quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1)},
    dataType: 'json',
    beforeSend: function() {
    //  $('#cart > button').button('loading');
    },
    success: function(json) {

      window.location = 'index.php?route=checkout/cart';

      console.log("Hitesh"+json);
    //  $('#cart > button').button('reset');

      $('#cart-total').html(json['total']);



      if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
        location = 'index.php?route=checkout/cart';
      } else {
        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });

}

// $.ajax({
//   url: 'index.php?route=checkout/cart/remove',
//   type: 'post',
//   data: 'key=' + key,
//   dataType: 'json',
//   beforeSend: function() {
//
//     $('#cart > button').button('loading');
//   },
//   success: function(json) {
//
//
//     $('#cart > button').button('reset');
//
//     $('#cart-total').html(json['total']);
//
//     if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
//       location = 'index.php?route=checkout/cart';
//     } else {
//       $('#cart > ul').load('index.php?route=common/cart/info ul li');
//     }
//   }
// });


</script>



<?php echo $footer; ?>
