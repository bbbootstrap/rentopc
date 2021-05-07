<?php echo $header; ?>
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
    margin-top: -11px;
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
    margin-bottom: 14px;
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


/*filter*/

.wrapper{

    margin-left: 10px;

}
@media(max-width:992px){
 .wrapper{
  width:100%;
}
}
.panel-heading {
  padding: 0;
    border:0;
}
.panel-title>a, .panel-title>a:active{
    display:block;
    padding:10px;
  color:#555;
  font-size:13px;
  font-weight:bold;
    text-transform:uppercase;
    letter-spacing:1px;
  word-spacing:3px;
    text-decoration:none;
}
.panel-heading  a:before {
   font-family: 'Glyphicons Halflings';
   content: "\e114";
   float: right;
   transition: all 0.5s;
}
.panel-heading.active a:before {
    -webkit-transform: rotate(180deg);
    -moz-transform: rotate(180deg);
    transform: rotate(180deg);
}

.panel-default > .panel-heading {
    color: #282b2f;
    background-color: #ffffff !important;
    border-color: #d5d5d5;
}

@keyframes click-wave {
    0% {
        height: 40px;
        width: 40px;
        opacity: 0.15;
        position: relative
    }

    100% {
        height: 200px;
        width: 200px;
        margin-left: -80px;
        margin-top: -80px;
        opacity: 0
    }
}

.option-input {
        -webkit-appearance: none;
    -moz-appearance: none;
    -ms-appearance: none;
    -o-appearance: none;
    appearance: none;
    position: relative;
    top: -8.66667px;
    right: 0;
    bottom: 0;
    left: 0;
    height: 24px;
    width: 24px;
    transition: all 0.15s ease-out 0s;
    background: #cbd1d8;
    border: none;
    color: #fff;
    cursor: pointer;
    display: inline-block;
    margin-right: 0.5rem;
    outline: none;
    position: relative;
    z-index: 1000;
}

.option-input:hover {
    background: #9faab7
}

.option-input:checked {
    background: #2874ef
}

.option-input:checked::before {
        height: 24px;
    width: 24px;
    position: absolute;
    content: "\f111";
    font-family: "Font Awesome 5 Free";
    display: inline-block;
    font-size: 14.66667px;
    text-align: center;
    line-height: 26px;
}

.option-input:checked::after {
    -webkit-animation: click-wave 0.15s;
    -moz-animation: click-wave 0.15s;
    animation: click-wave 0.15s;
    background: #E91E63;
    content: '';
    display: block;
    position: relative;
    z-index: 100
}

.option-input.radio {
    border-radius: 50%
}

.option-input.radio::after {
    border-radius: 50%
}


.radio input[type="radio"], .radio-inline input[type="radio"], .checkbox input[type="checkbox"], .checkbox-inline input[type="checkbox"] {
    float: left;
    margin-left: -24px !important;
}


input[type="checkbox"]:focus {
    outline: thin dotted #333;
    outline: 0px auto -webkit-focus-ring-color;
    outline-offset: 0px;
}

.ml-10 {
    margin-left: 10px;
    font-size: 16px;
    color: #080808;
}



.btn.btn-out {
    outline: 1px solid #fff;
    outline-offset: -5px
}

.btn {
    border-radius: 2px;
    text-transform: capitalize;
    font-size: 15px;
    padding: 10px 19px;
    cursor: pointer;
    color: #fff
}


.refine{
        padding: 8px 0px !important;
}

.filters-text{

    background: #fff;
    border: 1px solid #d5d5d5;
    margin-bottom: 15px;
    padding: 12px;

}

.filter-span{
        font-size: 17px;
    color: #2874ef;
}






</style>



<div class="container-fluid" style="margin-top:-28px;">

  <div class="row">

    <div class="col-md-12">

      <div class="wrapper center-block" style="    margin-right: 10px;">


        <div class="filters-text">

<span class="filter-span">Search Results : <?php echo $search; ?></span>
<span style="float:right;"><ol class="breadcrumb">
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

  <div>


  <div class="row">

    <div class="col-md-4">


      <div class="wrapper center-block">


        <div class="filters-text">

        <span class="filter-span">Filters <small>(find product using filters below)</small></span>
        <span style="float:right;"><i class="fa fa-filter" style="font-size: 12px;
            color: #2874ef;"></i></span>

        </div>



     </div>

     <div class="wrapper center-block">


        <div class="filters-text">

        <select id="input-sort" class="form-control" onchange="location = this.value;">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>

        </div>















           <!--Search Filters Start -->
           <style>

           .wrapper{
             width: 100%;
               margin-left: 10px;
                   margin-top: 20px;
           }
           @media(max-width:992px){
            .wrapper{
             width:100%;
           }
           }
           .panel-heading {
             padding: 0;
               border:0;
           }
           .panel-title>a, .panel-title>a:active{
               display:block;
               padding:10px;
             color:#555;
             font-size:13px;
             font-weight:bold;
               text-transform:uppercase;
               letter-spacing:1px;
             word-spacing:3px;
               text-decoration:none;
           }
           .panel-heading  a:before {
              font-family: 'Glyphicons Halflings';
              content: "\e114";
              float: right;
              transition: all 0.5s;
           }
           .panel-heading.active a:before {
               -webkit-transform: rotate(180deg);
               -moz-transform: rotate(180deg);
               transform: rotate(180deg);
           }

           .panel-default > .panel-heading {
               color: #282b2f;
               background-color: #ffffff !important;
               border-color: #d5d5d5;
           }




           .wrapper {
                width: 100%;
                margin-left: 7px;
                margin-top: 0px;
                padding-left: 0px;
                padding-right: 7px;
            }






           @keyframes click-wave {
               0% {
                   height: 40px;
                   width: 40px;
                   opacity: 0.15;
                   position: relative
               }

               100% {
                   height: 200px;
                   width: 200px;
                   margin-left: -80px;
                   margin-top: -80px;
                   opacity: 0
               }
           }

           .option-input {
                   -webkit-appearance: none;
               -moz-appearance: none;
               -ms-appearance: none;
               -o-appearance: none;
               appearance: none;
               position: relative;
               top: -8.66667px;
               right: 0;
               bottom: 0;
               left: 0;
               height: 24px;
               width: 24px;
               transition: all 0.15s ease-out 0s;
               background: #cbd1d8;
               border: none;
               color: #fff;
               cursor: pointer;
               display: inline-block;
               margin-right: 0.5rem;
               outline: none;
               position: relative;
               z-index: 1000;
           }

           .option-input:hover {
               background: #9faab7
           }

           .option-input:checked {
               background: #2874ef
           }

           .option-input:checked::before {
                   height: 24px;
               width: 24px;
               position: absolute;
               content: "\f111";
               font-family: "Font Awesome 5 Free";
               display: inline-block;
               font-size: 14.66667px;
               text-align: center;
               line-height: 26px;
           }

           .option-input:checked::after {
               -webkit-animation: click-wave 0.15s;
               -moz-animation: click-wave 0.15s;
               animation: click-wave 0.15s;
               background: #E91E63;
               content: '';
               display: block;
               position: relative;
               z-index: 100
           }

           .option-input.radio {
               border-radius: 50%
           }

           .option-input.radio::after {
               border-radius: 50%
           }


           .radio input[type="radio"], .radio-inline input[type="radio"], .checkbox input[type="checkbox"], .checkbox-inline input[type="checkbox"] {
               float: left;
               margin-left: -24px !important;
           }


           input[type="checkbox"]:focus {
               outline: thin dotted #333;
               outline: 0px auto -webkit-focus-ring-color;
               outline-offset: 0px;
           }

           .ml-10 {
               margin-left: 10px;
               font-size: 16px;
               color: #080808;
           }



           .btn.btn-out {
               outline: 1px solid #fff;
               outline-offset: -5px
           }

           .btn {
               border-radius: 2px;
               text-transform: capitalize;
               font-size: 15px;
               padding: 10px 19px;
               cursor: pointer;
               color: #fff
           }


           .refine{
                   padding: 8px 0px !important;
           }

           .filters-text{

               background: #fff;
               border: 1px solid #d5d5d5;
               margin-bottom: 15px;
               padding: 12px;

           }

           .filter-span{
                   font-size: 17px;
               color: #2874ef;
           }


           .btn-out{
               width:100%;
           }


           </style>




           <div class="wrapper center-block">

             <div class="filters-text">

           <span class="filter-span">Filters <small>(find product using filters below)</small></span>
           <span style="float:right;"><i class="fa fa-filter" style="font-size: 12px;
               color: #2874ef;"></i></span>

           </div>



             <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">



             <?php foreach ($filter_groups as $filter_group) { ?>
             <div class="panel panel-default">
               <div class="panel-heading" role="tab" id="heading<?php echo $filter_group['filter_group_id']; ?>">
                 <h4 class="panel-title">
                   <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $filter_group['filter_group_id']; ?>" aria-expanded="false" aria-controls="collapse<?php echo $filter_group['filter_group_id']; ?>">
                     <?php echo $filter_group['name']; ?>
                   </a>
                 </h4>
               </div>
               <div id="collapse<?php echo $filter_group['filter_group_id']; ?>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading<?php echo $filter_group['filter_group_id']; ?>">
                 <div class="panel-body">


                   <?php foreach ($filter_group['filter'] as $filter) { ?>
                   <div class="checkbox">
                     <label>
                       <?php if (in_array($filter['filter_id'], $filter_category)) { ?>

                       <input type="checkbox" class="option-input checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" id="<?php echo $filter['filter_id']; ?>"/> <span class="ml-10"><?php echo $filter['name']; ?></span>

                       <?php } else { ?>

                        <input type="checkbox" class="option-input checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" id="<?php echo $filter['filter_id']; ?>"/> <span class="ml-10"><?php echo $filter['name']; ?></span>
                       <?php } ?>
                     </label>
                   </div>
                   <?php } ?>




                 </div>
               </div>
             </div>

             <?php } ?>




           </div>

           </div>



           <script>
           // $(document).ready(function(){
           //
           //
           //  $('.panel-collapse').on('show.bs.collapse', function () {
           //     $(this).siblings('.panel-heading').addClass('active');
           //   });
           //
           //   $('.panel-collapse').on('hide.bs.collapse', function () {
           //     $(this).siblings('.panel-heading').removeClass('active');
           //   });
           //
           //
           // });


           </script>


           <script>


           $(document).on('change','input[name^=\'filter\']',function(){

             var id = $(this).attr("id");
             if($("#"+id).attr("checked")){
                $("#"+id).removeAttr("checked");
             }else{

               $("#"+id).attr("checked","checked");
             }
           });


           $(document).on('change','#accordion',function(){
                filter = [];

                $('input[name^=\'filter\']:checked').each(function(element) {

                    filter.push(this.value);
                });

               var params = new window.URLSearchParams(window.location.search);
               var search = params.get('search');
               var baseurl = window.location.origin;
              
               $.ajax({
                   url:"index.php?route=product/search/filtered_data",
                   method:"POST",
                   data:{filter:filter},
                   dataType: "json",
                   success:function(data){

                       $("#search_product").html("");
                       let sortedInput = data.slice().sort((a, b) => b.quantity - a.quantity);
                    //   people = sort_by_key(data, 'quantity');
                      // alert(sortedInput);
                     $.each(sortedInput, function(i, item) {
                       if (item.product_id != null){
                        var product_price = parseInt(item.price);

                          var product_image = baseurl+'/image/'+item.image;
                          var stock;
                          if(item.quantity > 0){
                            stock = '<span class="rating-review mb-2" style="color:green;font-size: 15px;">In Stock</span>';

                          }else{
                            stock = '<span class="rating-review mb-2" style="color:red;font-size: 15px;">Out of Stock</span>';

                          }
                          $("#search_product").append('<a href="'+item.url+'"><li class="list-group-item my-list-group-item"><div class="row"><div class="col-md-3 text-center"><img src="'+product_image+'" alt="'+item.name+'" width="250" height="200"></div><div class="col-md-9"><h4 class="mt-0 p-title" style="margin-bottom: .5rem;">'+item.name+'</h4><div class="product-rating mb-14"><span class="badge23"><i class="fa fa-star"></i> '+item.rating+' Star</span> <span class="rating-review mb-1">'+item.reviews+' Reviews </span></div><span class="product_price price-new">'+product_price+'</span><div class="product-rating" style="margin-bottom: 1px;margin-top: 1px;">'+stock+'</div><hr class="mb-2 mt-1 seperator"><div class="d-flex align-items-center justify-content-between mt-1"><ul class="list-inline small" style="display: inline-grid;"><li><img src="img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"</li></ul><ul class="list-inline small" style="    display: inline-grid;"><li><img src="img.icons8.com/material-outlined/10/000000/filled-circle--v1.png">Text</li></ul></div></div></div></li></a>');


                        }
                    });
                   }
               });
            });





           </script>
           <!--Search Filtrs End-->



















     </div>




    </div>

    <div class="col-md-8">

<!-- <div class="product-filter clearfix"> <div class="inner clearfix">

  <div class="filter-right">


        <div class="sort pull-right">

        <select id="input-sort" class="form-control" onchange="location = this.value;">
          <?php foreach ($sorts as $sorts) { ?>
          <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
          <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
     </div>

</div>
</div> -->


      <ul class="list-group shadow" id="search_product" style="margin-right: 10px;">


                    <?php

                      foreach ($products as $product) {

                        if($product['product_parent_cat_id']==75){
                    ?>


                    <a href="<?php echo 'index.php?route=product/product_redeem&path=75&product_id='.$product['product_id']; ?>">
                      <li class="list-group-item my-list-group-item">

                        <div class="row">

                           <div class="col-md-3 text-center">

                            <img src="<?php echo $product['thumb']; ?>" alt="Generic placeholder image" width="250" height="200">

                           </div>

                           <div class="col-md-9">

                            <h4 class="mt-0 p-title" style="margin-bottom: .5rem;"><?php echo $product['name']; ?></h4>
                            <div class="product-rating mb-14">
                                <span class="badge23"><i class="fa fa-star"></i> 5 Star</span>
                                <span class="rating-review mb-1"><?php echo $product['rating']; ?> Ratings </span>
                            </div>

                            <span class="product_price price-new"><?php echo $product['points']; ?> Points </span>
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






                    <?php

                        } else{


                    ?>


                    <a href="<?php echo $product['href']; ?>">
                      <li class="list-group-item my-list-group-item">

                        <div class="row">

                           <div class="col-md-3 text-center">

                            <img src="<?php echo $product['thumb']; ?>" alt="Generic placeholder image" width="250" height="200">

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



                      <?php }} ?>





                   </ul>

     <div class="paging clearfix">
  <div class="pull-left"><?php echo $pagination; ?></div>
  <div class="pull-right"><?php echo $results; ?></div>
</div>




    </div>

  </div>

</div>

<?php echo $footer; ?>
