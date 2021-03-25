<?php

    $mode = 'default';
    $cols = array( 'default' => array(5,7),
                   'horizontal' => array(4,6)
    );
    $cols = $cols[$mode];
?>
<?php $olang = $this->registry->get('language'); ?>


<script type="text/javascript">
    function profile(us_id){



        // var us_id = <?php echo $us_id; ?>;

        var colors = ['#D50000', '#AD1457', '#7B1FA2','#7B1FA2','#4A148C','#7E57C2','#4527A0','#1A237E','#0D47A1','#01579B','#33691E','#F57F17','#3E2723','#424242'];
  var random_color = colors[Math.floor(Math.random() * colors.length)];
  $('#profileImage'+us_id).css('background', random_color);

        var fullName = $('#firstName'+us_id).text();

  var firstName = fullName.split(' ').slice(0, -1).join(' ');
  var lastName = fullName.split(' ').slice(-1).join(' ');

  // var firstName = $('#firstName').text();
  // var lastName = $('#lastName').text();
  //var intials = $('#firstName').text().charAt(0) + $('#lastName').text().charAt(0);
  var intials = firstName.charAt(0) + lastName.charAt(0);
  var profileImage = $('#profileImage'+us_id).text(intials);


    }



    function viewmore(us_id){

    var elem = $("#more"+us_id).text();
    if (elem == "Read More") {
      //Stuff to do when btn is in the read more state
      // $("#teaser"+us_id).addC('display','none !important');
      $("#teaser"+us_id).addClass("hideme");
      $("#complete"+us_id).removeClass("complete");
      $("#more"+us_id).text("Read Less");
      $("#complete"+us_id).slideDown();
    } else {
      //Stuff to do when btn is in the read less state

      $("#more"+us_id).text("Read More");
      $("#teaser"+us_id).removeClass("hideme");
      $("#complete"+us_id).slideUp();
    }


}

</script>

<style type="text/css">

@charset "utf-8";
@import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');

body
{
    font-family: 'Rubik', sans-serif;
    font-size: 14px;
    font-weight: 400;
    background: #f5f6f7 !important;
    color: #000000;
}

.fam{

color: #ffffff;
    background-color: #ff6346;
    padding: 6px;
    text-align: center;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    -ms-border-radius: 100%;
    -o-border-radius: 100%;
    border-radius: 100%;
    float: left;
    font-size: 9px;
    margin: 0px 5px 0 0;

}


.fa-color {
    color: #ef6b49;
}

.gap {
    padding-right: 5px !important;
}


         .breadcrumb-item + .breadcrumb-item::before {
         content: ">";
         padding: 4px;
         }
         .breadcrumb1 {
         display: -ms-flexbox;
         display: flex;
         -ms-flex-wrap: wrap;
         flex-wrap: wrap;
         padding: .1rem 0rem !important;
         margin-bottom: 0rem;
         list-style: none;
         background-color: #ffffff;
         border-radius: .25rem;
         }
         .single_product {
         padding-top: 66px;
         padding-bottom: 140px;
         background-color: #e5e5e5;
         margin-top: 0px;
         padding: 17px;
         }
         .product_name {
         font-size: 20px;
         font-weight: 400;
         margin-top: 7px;
         line-height: 1.2em;
         }
         .badge {
         display: inline-block;
         padding: 0.50em .4em;
         font-size: 75%;
         font-weight: 700;
         line-height: 1;
         text-align: center;
         white-space: nowrap;
         vertical-align: baseline;
         border-radius: .25rem;
         }
         .product-rating{
         margin-top: 10px;
         }
         .rating-review{
         color: #5b5b5b;
         }
         .product_price {
             display: inline-block;
    font-size: 26px;
    font-weight: 400;
    margin-top: 13px;
    margin-bottom: 0px;
    color: #080808;
    clear: left;
         }
         .product_discount{
         display: inline-block;
         font-size: 17px;
         font-weight: 300;
         margin-top: 9px;
         clear: left;
         margin-left: 10px;
         color: red;
         }

         .singleline{
         margin-top: 2rem;
         margin-bottom: .90rem;
         border: 0;
         border-top: 1px solid rgba(0,0,0,.1);
         }
         .product_info{
         color: #4d4d4d;
         display: inline-block;
             line-height: 1.5;
         }
         .product_options{
         margin-bottom: 10px;
         }
         .product_description {
         padding-left: 0px;
             z-index: 1 !important;
             padding-left: 50px;
         }
         .product_quantity {
         width: 104px;
         height: 47px;
         border: solid 1px #e5e5e5;
         border-radius: 3px;
         overflow: hidden;
         padding-left: 8px;
         padding-top: -4px;
         padding-bottom: 44px;
         float: left;
         margin-right: 22px;
         margin-bottom: 11px;
         }
         .order_info {
         margin-top: 18px;
         }
         .shop-button{
         height: 47px;
         border-radius: 4px;
         }
         .product_fav i {
         line-height: 44px;
         color: #cccccc;
         /* padding: 0px; */
         /* padding-top: 10px; */
         }
         .product_fav {
         display: inline-block;
         width: 52px;
         height: 46px;
         background: #FFFFFF;
         box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
         border-radius: 11%;
         text-align: center;
         cursor: pointer;
         margin-left: 3px;
         -webkit-transition: all 200ms ease;
         -moz-transition: all 200ms ease;
         -ms-transition: all 200ms ease;
         -o-transition: all 200ms ease;
         transition: all 200ms ease;
         }
         .br-dashed{
         border-radius: 5px;
         border: 1px dashed #dddddd;
         margin-top: 6px;
         }
         .pr-info{
         margin-top: 2px;
         padding-left: 2px;
         margin-left: -14px;
         padding-left: 0px;
         }
         .break-all{
         color: #5e5e5e;
         }
         .image_selected {
         display: -webkit-box;
         display: -moz-box;
         display: -ms-flexbox;
         display: -webkit-flex;
         display: flex;
         flex-direction: column;
         justify-content: center;
         align-items: center;
         width: calc(100% + 15px);
         height: 525px;
         -webkit-transform: translateX(-15px);
         -moz-transform: translateX(-15px);
         -ms-transform: translateX(-15px);
         -o-transform: translateX(-15px);
         transform: translateX(-15px);
         border: solid 1px #e8e8e8;
         box-shadow: 0px 0px 0px rgba(0,0,0,0.1);
         overflow: hidden;
         padding: 15px;
         }
         .image_list li {
         display: -webkit-box;
         display: -moz-box;
         display: -ms-flexbox;
         display: -webkit-flex;
         display: flex;
         flex-direction: column;
         justify-content: center;
         align-items: center;
         height: 165px;
         border: solid 1px #e8e8e8;
         box-shadow: 0px 0px 0px rgba(0,0,0,0.1) !important;
         margin-bottom: 15px;
         cursor: pointer;
         padding: 15px;
         -webkit-transition: all 200ms ease;
         -moz-transition: all 200ms ease;
         -ms-transition: all 200ms ease;
         -o-transition: all 200ms ease;
         transition: all 200ms ease;
         overflow: hidden;
         }
         @media (max-width: 390px){
         .product_fav{
         display: none;
         }
         }











         @charset "utf-8";

@import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');

*
{
    margin: 0;
    padding: 0;
    -webkit-font-smoothing: antialiased;
    -webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
    text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
body
{
    font-family: 'Rubik', sans-serif;
    font-size: 14px;
    font-weight: 400;
    background: #FFFFFF;
    color: #000000;
}
div
{
    display: block;
    position: relative;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
ul
{
    list-style: none;
    margin-bottom: 0px;
}


/*********************************
5. Single Product
*********************************/

.single_product
{
    padding-top: 110px;
    padding-bottom: 140px;
}
.image_list li
{
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 165px;
    border: solid 1px #e8e8e8;
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    margin-bottom: 15px;
    cursor: pointer;
    padding: 15px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
    overflow: hidden;
}
.image_list li:last-child
{
    margin-bottom: 0;
}
.image_list li:hover
{
    box-shadow: 0px 1px 5px rgba(0,0,0,0.3);
}
.image_list li img
{
    max-width: 100%;
}
.image_selected
{
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: calc(100% + 15px);
    height: 525px;
    -webkit-transform: translateX(-15px);
    -moz-transform: translateX(-15px);
    -ms-transform: translateX(-15px);
    -o-transform: translateX(-15px);
    transform: translateX(-15px);
    border: solid 1px #e8e8e8;
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    overflow: hidden;
    padding: 15px;
}
.image_selected img
{
    max-width: 100%;
}

.product_category
{
    font-size: 12px;
    color: rgba(0,0,0,0.5);
}
.product_name
{
        font-size: 19px;
    font-weight: 500;
    margin-top: 11px;
}
.product_rating
{
    margin-top: 7px;
}
.product_rating i
{
    margin-right: 4px;
}
.product_rating i::before
{
    font-size: 13px;
}
.product_text
{
    margin-top: 27px;
}
.product_text p:last-child
{
    margin-bottom: 0px;
}
.order_info
{
    margin-top: 53px;
}
.product_quantity
{
    width: 130px;
    height: 49px;
    border: solid 1px #e5e5e5;
    border-radius: 5px;
    overflow: hidden;
    padding-left: 25px;
    float: left;
    margin-right: 30px;
}
.product_quantity span
{
    display: block;
    height: 50px;
    font-size: 16px;
    font-weight: 300;
    color:#000;
    line-height: 50px;
    float: left;
}
.product_quantity input
{
    display: block;
    width: 30px;
    height: 50px;
    border: none;
    outline: none;
    font-size: 16px;
    font-weight: 300;
    color:#000;
    text-align: left;
    padding-left: 9px;
    line-height: 50px;
    float: left;
}
.quantity_buttons
{
    position: absolute;
    top: 0;
    right: 0;
    height: 100%;
    width: 29px;
    border-left: solid 1px #e5e5e5;
}
.quantity_inc,
.quantity_dec
{
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%;
    height: 50%;
    cursor: pointer;
}
.quantity_control i
{
    font-size: 11px;
    color: #000;
    pointer-events: none;
}
.quantity_control:active
{
    border: solid 1px rgba(14, 140, 228, 0.2);
}
.quantity_inc
{
    padding-bottom: 2px;
    justify-content: flex-end;
    border-top-right-radius: 5px;
}
.quantity_dec
{
    padding-top: 2px;
    justify-content: flex-start;
    border-bottom-right-radius: 5px;
}



.btn-primary {
    color: #ffffff;
    background-color: #2196F3 ;
    border-color: #3096f3;
}

.btn-primary:hover {
    color: #ffffff;
    background-color: #3292de !important;
    border-color: #3292de !important;
}

.product-info .image {
    position: relative;
    margin-bottom: 8px !important;
    text-align: center;
}


.product-info {
    overflow: hidden;
    background-color: #ffffff;
    -webkit-box-shadow: 0 0 3px #d3d3d3;
    box-shadow: 0 0 1px #d3d3d3 !important;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    -ms-border-radius: 5px;
    -o-border-radius: 5px;
    border-radius: 2px !important;
    margin-bottom: 25px;
    padding: 20px;
        margin-top: -30px;
}







.breadcrumb-item+.breadcrumb-item::before {
    content: ">"
}

.breadcrumb {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding: .1rem 0rem !important;
    margin-bottom: 0rem;
    list-style: none;
    background-color: #ffffff;
    border-radius: .25rem
}

.single_product {
    padding-top: 66px;
    padding-bottom: 140px;
    background-color: #e5e5e5;
    margin-top: 0px;
    padding: 17px
}

.product_name {
    font-size: 23px;
    font-weight: 400;
        margin-top: 3px;
}

.badge {
    display: inline-block;
    padding: 0.50em .4em;
    font-size: 75%;
    font-weight: 700;
    line-height: 1;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25rem
}

.product-rating {
    margin-top: 10px
}

.rating-review {
    color: #5b5b5b
}

/*.product_price {
    display: inline-block;
    font-size: 30px;
    font-weight: 500;
    margin-top: 9px;
    clear: left
}*/

.product_discount {
    display: inline-block;
    font-size: 17px;
    font-weight: 300;
    margin-top: 9px;
    clear: left;
    margin-left: 10px;
    color: red
}

.product_saved {
    display: inline-block;
    font-size: 15px;
    font-weight: 200;
    color: #000;
    clear: left
}

.singleline {
    margin-top: 2.5rem;
    margin-bottom: .80rem;
    border: 0;
    border-top: 1px solid rgba(0, 0, 0, .1)
}

.product_info {
    color: #4d4d4d;
    display: inline-block;

}

.product_options {
    margin-bottom: 10px
}

.product_quantity {
    width: 104px;
    height: 47px;
    border: solid 1px #e5e5e5;
    border-radius: 3px;
    overflow: hidden;
    padding-left: 8px;
    padding-top: -4px;
    padding-bottom: 44px;
    float: left;
    margin-right: 22px;
    margin-bottom: 11px
}

.order_info {
    margin-top: 18px
}


.product_fav i {
    line-height: 44px;
    color: #e53848
}

.product_fav {
    display: inline-block;
    width: 52px;
    height: 46px;
    background: #FFFFFF;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
    border-radius: 11%;
    text-align: center;
    cursor: pointer;
    margin-left: 3px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease
}


.product_fav_share{

    display: inline-block;
    width: 52px;
    height: 46px;
    background: #FFFFFF;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
    border-radius: 11%;
    text-align: center;
    cursor: pointer;
    margin-left: 3px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease

}

.br-dashed {
    border-radius: 5px;
    border: 1px dashed #dddddd;
    margin-top: 18px
}

.pr-info {
    margin-top: 2px;
    padding-left: 2px;
    margin-left: -14px;
    padding-left: 0px;
    line-height: 22px;
}

.break-all {
    color: #5e5e5e
}

.image_selected {
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: calc(100% + 15px);
    height: 525px;
    -webkit-transform: translateX(-15px);
    -moz-transform: translateX(-15px);
    -ms-transform: translateX(-15px);
    -o-transform: translateX(-15px);
    transform: translateX(-15px);
    border: solid 1px #e8e8e8;
    box-shadow: 0px 0px 0px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    padding: 15px
}

.image_list li {
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 165px;
    border: solid 1px #e8e8e8;
    box-shadow: 0px 0px 0px rgba(0, 0, 0, 0.1) !important;
    margin-bottom: 15px;
    cursor: pointer;
    padding: 15px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
    overflow: hidden
}

@media (max-width: 390px) {
    .product_fav {
        display: none
    }
}

.bbb_combo {
        width: 100%;
    margin-right: 7%;
    padding-top: 21px;
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 13px;
    border-radius: 5px;
    margin-top: 0px;
    text-align: -webkit-center;
}


.bbb_combo_3 {
        width: 100%;
    margin-right: 7%;
    padding-top: 21px;
    padding-left: 10px;
    padding-right: 10px;
    padding-bottom: 13px;
    border-radius: 5px;
    margin-top: 0px;
    text-align: -webkit-center;
}


.bbb_combo_image {
        width: 140px;
    height: 140px;
    margin-bottom: 12px;
}

.fs-10 {
    font-size: 10px
}

.step {
    background: #167af6;
    border-radius: 0.8em;
    -moz-border-radius: 0.8em;
    -webkit-border-radius: 6.8em;
    color: #ffffff;
    display: inline-block;
    font-weight: bold;
    line-height: 3.6em;
    margin-right: 5px;
    text-align: center;
    width: 3.6em;
    margin-top: 116px
}

.row-underline {
    content: "";
    display: block;
    border-bottom: 2px solid #e2e2e2;
    margin: 0px 0px;
    margin-bottom: 20px;
    margin-top: 15px
}

.row-underline:after {
    content: '';
    display: block;
    border-bottom: 2px solid #2874ef;
    margin-bottom: -2px;
    max-width: 244px;
}

.deal-text {
    margin-left: -10px;
    font-size: 25px;
    margin-bottom: 10px;
    color: #000;
    font-weight: 400
}

.padding-0 {
    padding-left: 0;
    padding-right: 0
}

.padding-2 {
    margin-right: 2px;
    margin-left: 2px
}

.vertical-line {
    display: inline-block;
    border-left: 3px solid #167af6;
    margin: 0 10px;
    height: 310px;
    margin-top: 4px
}

.p-rating {
    color: green
}

.combo-pricing-item {
    display: flex;
    flex-direction: column
}

.boxo-pricing-items {
    display: inline-flex
}

.combo-plus {
    margin-left: 10px;
    margin-right: 18px;
    margin-top: 10px
}

.add-both-cart-button {
    margin-left: 36px
}

.items_text {
    color: #b0b0b0
}

.combo_item_price {
    font-size: 17px
}

.p_specification {
    font-weight: 500;
    margin-left: 22px
}

.mt-10 {
    margin-top: 10px
}

.badge23{

        display: inline-block;
    padding: 0.50em .4em;
    font-size: 75%;
    font-weight: 700;
    line-height: 1;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25rem;
    color: #fff;
    background-color: #28a745;
}



@media only screen and (min-width: 1224px){
.container {
    max-width: 1436px !important;
}

}


.zoomContainer{

        border: 1px solid #eee;
}



.fa-share-alt{

    color:#5cb85c !important;
}

/*Options start*/


.dropbtn {
         background-color: #2196F3;
    color: white;
    padding: 6px;
    font-size: 14px;
    border: none;
    border-radius: 3px;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  color:#5a5656;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #097ee8;}



/*Options End*/


.faq-desc{

    color: #5f5959;
    font-size: 15px;
}


.faq-title{

    color:#484747;
}


.review-product{

   color:#484747;

}



.profileImage {
        width: 40px;
    height: 42px;
    border-radius: 50%;
    /* background: #512DA8; */
    font-size: 17px;
    color: #fff;
    text-align: center;
    line-height: 43px;
    text-transform: uppercase;
    margin-right: 11px;

}


.myellipse{
        display: block;
    display: -webkit-box !important;
    max-width: 94%;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
}


.complete{
    display:none !important;
}

.more{
        /* background: lightblue; */
    color: #526ff6;
    font-size: 13px;
    padding: 0px;
    cursor: pointer;
}

.hideme{
    display: none !important;
}

/*Radio Button*/

label.radio {
    cursor: pointer;
    float: left;
    clear: none;
}


.myradio{
        display: block;
    min-height: 20px;
    margin-top: 0px !important;
    margin-bottom: 10px;
    padding-left: 2px;
    vertical-align: middle;
}

label.radio input {
    position: absolute;
    top: 0;
    left: 0;
    visibility: hidden;
    pointer-events: none
}

label.radio span {
         padding: 3px 8px;
    border: 2px solid #2874ef;
    display: inline-block;
    color: #2874ef;
    border-radius: 3px;
    text-transform: uppercase;
    font-size: 11px;
    font-weight: 500;
}

label.radio input:checked+span {
    border-color: #2874ef;
    background-color: #2874ef;
    color: #fff
}

.custom-breadcrumb:last-child{
        height: 15px;
    width: 281px;
    padding: 0;
    overflow: hidden;
    position: relative;
    display: inline-block;
    margin: 0px 0px 0 0px;
    text-align: center;
    text-decoration: none;
    text-overflow: ellipsis;
    white-space: nowrap;
}


.configuration{


          background:#3196f3;
    color: #fff;
    padding: 4px;
    width: 235px;
    height: 38px;
    border: none;
    font-size: 15px;
    -webkit-appearance: button;
    outline: none;

}

.configuration:before {
    content: '\f358';
    font-family: "Font Awesome 5 free";
    position: absolute;
    top: 0;
    right: 0;
    height: 50px;
    width: 50px;
    background: #E91E63;
    text-align: center;
    line-height: 50px;
    color: #fff;
    font-size: 30px;
    pointer-events: none
}

.product-badge-combo{

position: absolute;
height: 26px;
background-color: green;
padding: 0px 14px;
border-radius: 3px;
color: #fff !important;
font-size: 12px;
font-weight: 400;
letter-spacing: .025em;
line-height: 27px;
top: -7px;

}

.ribbon {
  width: 150px;
  height: 150px;
  overflow: hidden;
  position: absolute
        }

.ribbon span {
  position: absolute;
  display: block;
  width: 34px;
  border-radius: 50%;
  padding: 8px 0;
  background-color: #3498db;
  box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
  color: #fff;
  font: 100 18px/1 'Lato', sans-serif;
  text-shadow: 0 1px 1px rgba(0, 0, 0, .2);
  text-transform: uppercase;
  text-align: center
}

.ribbon-top-right {
  top: -3px;
  left: 144px;
}

      </style>


<div class="product-info">
    <div class="container">
    <div class="row">
    <?php require( ThemeControlHelper::getLayoutPath( 'common/detail/'.$mode.'.tpl' ) );  ?>

	<div class="col-xs-12 col-sm-<?php echo $cols[1]; ?> col-md-<?php echo $cols[1]; ?> col-lg-<?php echo $cols[1]; ?>">


                     <div class="product_description" id="product">
                        <nav>
                           <ol class="breadcrumb">
                              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
<li class="custom-breadcrumb"><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
<?php } ?>
                              <!-- <li class="breadcrumb-item"><a href="#">Home</a></li>
                              <li class="breadcrumb-item active"><a href="#">Products</a></li> -->

                           </ol>
                        </nav>
                        <div class="product_name"><?php echo $heading_title; ?></div>
                        <div class="product-rating">


                        <span class="badge23"><i class="fa fa-star"></i> <?php echo round($rating_average, 1); ?> Star</span>




                         <span class="rating-review"><?php echo $count_reviews; ?> Ratings & <?php echo $count_recommendation; ?> Recommendations</span></div>
                        <div>

                            <?php if ($price) { ?>
            <div class="price">
                <ul class="list-unstyled">
                    <?php if (!$special) { ?>
                        <li class="price-gruop">
                            <span class="product_price price-new"><?php echo $price; ?> </span>
                        </li>
                    <?php } else { ?>

                        <li> <span class="price-old product_price" style="text-decoration: none;"> <?php echo $special; ?> </span> <span style="text-decoration: line-through;"><?php echo $price; ?></span> </li>
                    <?php } ?>
                    <!--
                    <?php if ($tax) { ?>
                        <li class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                    <?php } ?>
                -->

                    <?php if ($discounts) { ?>
                        <li>
                        </li>
                        <div class="discount">
                        <?php foreach ($discounts as $discount) { ?>

                            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                        <?php } ?>
                    <?php } ?>
                </ul>

            </div>
        <?php } ?>

        <?php if ($reward) { ?>
                <span class="product_saved">Credits: </span>
                           <span class="reward"> <?php echo $reward; ?></span>
            <?php } ?>

                           <!-- <span class="product_price"><?php echo $price; ?></span> -->

                        </div>
                        <div>
                           <span class="product_saved">Additional: </span>
                           <span style='color:black'>Inclusive of all taxes<span>
                        </div>
                        <hr class="singleline">


                        <div>

                            <?php if( $product_quantity >0) { ?>

                           <span class="product_info"><img alt="rentopc" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Availability: <?php echo $stock; ?><span><br>

                           <?php }?>

                           <?php if ($manufacturer) { ?>


                <span class="product_info"><img alt="rentopc" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png">  <?php echo $text_manufacturer; ?> <?php echo $manufacturer; ?><span><br>


            <?php } ?>



                           <span class="product_info"><img alt="rentopc" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png">  <?php echo $text_model; ?> <?php echo $model; ?><span><br>


                           <span class="product_info"><img alt="rentopc" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Warranty: 6 months warranty<span><br>


                            <span class="product_info"><img alt="rentopc" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Easy <a href="low-cost-emi" style="color:#0780d0;" target="_blank"> EMI</a> on card payments <span><br>









                           <span class="product_info"> <img alt="rentopc" src="https://img.icons8.com/material-outlined/10/000000/filled-circle--v1.png"> Feel free to <a href="#" id="jivochatclick" style="color:#0780d0;">chat with our agent</a><span><br>





                           <!-- <span class="product_info">
                            <?php echo $product_quantity; ?>

                           <b><?php echo (rand(1,15)); ?></b> people viewing this item
                           <span>  -->



                        </div>
                        <?php if ($product_quantity > 0) { ?>
                        <div>
                           <div class="row">
                              <div class="col-md-5">
                                 <div class="br-dashed">
                                    <div class="row">
                                       <div class="col-md-3 col-xs-3">
                                          <img alt="rentopc" src="https://img.icons8.com/color/48/000000/price-tag.png">
                                       </div>
                                       <div class="col-md-9 col-xs-9">
                                          <div class="pr-info">
                                             <span class="break-all">Get 5% redemption points @ RENTOPC.COM</span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-7">
                              </div>
                           </div>


                           <div class="row" style="margin-top: 19px;">

                            <div>
                            <?php if ($options) { ?>
                              <div class="col-xs-12" style="margin-left: 1px;">

                                  <fieldset id="group1">
                                    <div class="myclass">
                                    <?php foreach ($options as $option) { ?>


                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> ">
                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control configuration">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>

                                    </option>
                                <?php } ?>
                            </select>
                        </div>



                                    <!-- <div style="display: inline-block;margin-left: 10px;" class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                      <span class="product_options"><?php echo $option['name']; ?></span><br>
                                      <div id="input-option<?php echo $option['product_option_id']; ?>">
                                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                        <div class="radio">
                                          <label class="radio myradio">
                                            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                           <span> <?php echo $option_value['name']; ?></span>
                                          </label>
                                        <?php } ?>
                                      </div>
                                    </div> -->



                                    <?php } ?>




                                        </div>




                                  </fieldset>




                              </div>



                          <?php } ?>
                          </div>

                           </div>
                        </div>
                        <hr class="singleline">
                        <div class="order_info d-flex flex-row">
                           <form action="#">
                        </div>
                        <div class="row">
                           <div class="col-xs-3" style="margin-left: 2px;">

                               <!--  <div class="quantity-adder pull-left">
              <?php echo $olang->get('entry_qty'); ?>
               <input class="form-control" type="text" id="quantity_input" name="quantity" size="2" value="<?php echo $minimum; ?>">
                <span class="add-up add-action"><i class="fas fa-chevron-up"></i></span>
                <span class="add-down add-action"><i class="fas fa-chevron-down"></i></span>
              </div> -->


                               <div class="product_quantity p-quanity-adder">
                                 <span>QTY: <span class="updateqty" style="float: right; margin-left: 10px;"><?php echo $minimum; ?></span></span>

                                 <input id="quantity_input" name="quantity" type="hidden" value="<?php echo $minimum; ?>">

                                 <div class="quantity_buttons">
                                    <div id="quantity_inc_button" class="quantity_inc quantity_control add-up1 add-action1"><i class="fas fa-chevron-up"></i></div>
                                    <div id="quantity_dec_button" class="quantity_dec quantity_control add-down1 add-action1"><i class="fas fa-chevron-down"></i></div>
                                 </div>
                              </div>

            <!-- <input type="hidden" name="product_id" value="<?php echo $product_id; ?>">
             -->
             <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
             <input type="hidden" name="product_rewards" id="product_reward" value="<?php echo $reward; ?>">


                           </div>
                           <div class="col-xs-7">
                              <button type="button" id="button-cart" class="theme-color btn btn-primary shop-button" id="button-cart">Add to Cart</button>
                              <button type="button" class="btn btn-success shop-button" id="button-cart-buy" id="button-cart-buy">Buy Now</button>
                              <!-- <div class="cart pull-left"><input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" /></div>
              <div class="cart pull-left"><input type="button" value="<?php echo 'Buy Now'; ?>" id="button-cart-buy" class="button" /></div> -->
                             <a onclick="wishlist.addwishlist('<?php echo $product_id; ?>');" data-placement="top" data-toggle="tooltip" data-original-title="<?php echo $button_wishlist; ?>"> <div class="product_fav"><i class="fas fa-heart"></i></div></a>
                              <!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5d6677463a63b5ab"></script>

                              <a class="addthis_button_compact"><div class="product_fav"><i class="fas fa-share-alt"></i></div></a>

                              <div class="sharethis-inline-share-buttons"></div>


                           </div>
                        </div>
                     </div>

                    <?Php }else{ ?>

                     <div class="row" style="margin-bottom: 200px; margin-top: 10px;">

                        <div class="col-md-12">

                            <h6 style="font-size: 28px;">Product out of stock</h6>

                        </div>

                     </div>




                    <?Php } ?>

               </div>




	</div>
          <?php if($comboproducts){ ?>
           <div class="row row-underline">
                <div class="col-md-6"> <span class=" deal-text">Combo Offers</span> </div>
                <div class="col-md-6"> <a href="#" data-abc="true"> <span class="ml-auto view-all"></span> </a> </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="row padding-2" id="comboproducts2">
                      <div class="product-badge-combo bg-secondary border-default text-body"><?php echo $combo_offer_percentage_2; ?>% OFF ON COMBO</div>
                       <input type="hidden" id="type" value="2" />

                        <?php
                        $j =1;
                        $count = count($comboproducts2);
                        foreach ($comboproducts2 as $product) {

                          $percentage = $product['combo_percentage'];
                          $thirtyprice = ($percentage / 100) * $product['price'];
                          $combo_single_price = round($product['price'] -$thirtyprice,0);
                          $product_qty = $product['quantity'];





                        ?>



                        <div class="col-md-5 padding-0">
                            <div class="bbb_combo">
                                <div class="bbb_combo_image">
                                  <?php if($product_qty > 1) { ?>
                                  <div class="ribbon ribbon-top-right"><span><small style="font-size: 12px;">x</small> <?php echo $product_qty; ?></span></div>
                                <?php } ?>
                                  <img alt="rentopc" class="bbb_combo_image" src="<?Php echo $product['thumb']; ?>" alt="">
                                </div>
                                <!-- <div class="d-flex flex-row justify-content-start"> <strike style="color:red;"> <span class="fs-10" style="color:black;">₹ 32,000<span> </span></span></strike> <span class="ml-auto"><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i></span> </div> -->
                                <input type="hidden" id="1" value="<?php echo $product['product_id']; ?>" />
                                <div class="d-flex flex-row justify-content-start" style=" margin-bottom: 3px; "> <span style="margin-top: -4px; font-size:22px;"><strike style="color:red;font-size: 15px;"><?Php echo $product['price']; ?></strike> ₹<?Php echo $combo_single_price; ?></span> </div> <span class="bbb_viewed_name"><?Php echo $product['name']; ?></span>
                            </div>
                        </div>

                        <?php
                              if(++$j ==$count){
                         ?>

                        <div class="col-md-2 text-center"> <span class="step theme-color">+</span> </div>

                      <?php
                    }
                    }
                    ?>


                    </div>
                    <div class="row">
                        <div class="col-xs-12" style="margin-left: 36px;">
                            <div class="boxo-pricing-items">
                              <?php
                              $i =1;
                              $j = 1;
                              $count = count($comboproducts2);
                              $total_combo_price = 0;
                              foreach ($comboproducts2 as $product) {
                                $product_qty = $product['quantity'];
                                $percentage = $product['combo_percentage'];
                        				$thirtyprice = ($percentage / 100) * $product['price'];
                        				$combo_price_single = ($product['price'] -$thirtyprice);
                                $combo_price = $combo_price_single * $product_qty;
                                $total_combo_price = round($total_combo_price +$combo_price,0);
                                if($product_qty > 1){

                                  $p_quantity = "x ".$product_qty;
                                }else{

                                  $p_quantity = "";

                                }


                              ?>

                                <div class="combo-pricing-item"> <span class="items_text"><?php echo $i; ?> Item</span> <span class="combo_item_price">₹ <?php echo round($combo_price_single,0); ?> <?php echo $p_quantity; ?></span> </div>
                                <?php
                                      if(++$j ==$count){
                                 ?>

                                <div class="combo-plus"> <span class="plus-sign">+</span> </div>
                                <!-- <div class="combo-pricing-item"> <span class="items_text">1st Add-on</span> <span class="combo_item_price text-center">₹500</span> </div> -->


                                <?php
                                }
                                  $i++;
                                   }
                              ?>
                                <div class="combo-plus"> <span class="plus-sign">=</span> </div>
                                <div class="combo-pricing-item"> <span class="items_text">Total</span> <span class="combo_item_price"><?php echo $total_combo_price; ?></span> </div>


                                <div class="add-both-cart-button"> <button type="button" class="btn btn-primary shop-button theme-color" id="combo-button-cart-2">Add to Cart</button> </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-1 text-center"> <span class="vertical-line"></span> </div>
                <div class="col-md-6" style=" margin-left: -27px;">
                    <div class="row padding-2" id="comboproducts">
                      <div class="product-badge-combo bg-secondary border-default text-body"><?php echo $combo_offer_percentage;?>% OFF ON COMBO</div>
                        <div class="col-md-3 padding-0">
                            <div class="bbb_combo_3">
                                <div class="bbb_combo_image">

                                  <img class="bbb_combo_image" src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>">
                                </div>
                                <!-- <div class="d-flex flex-row justify-content-start"> <strike style="color:red;"> <span class="fs-10" style="color:black;">₹ 32,000<span> </span></span></strike> <span class="ml-auto"><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating p-rating"></i><i class="fa fa-star p-rating"></i></span> </div> -->
                                <div class="d-flex flex-row justify-content-start" style=" margin-bottom: 3px; "> <span style="margin-top: -4px;font-size:22px;"> <?php echo $price; ?></span> </div> <span class="bbb_viewed_name"><?php echo $heading_title; ?></span>
                            </div>
                            <input type="hidden" id="type" value="3" />
                            <input type="hidden" id="0" value="<?php echo $product_id; ?>" />

                        </div>


                        <?php

                        foreach ($comboproducts as $product) {

                          $percentage = $product['combo_percentage'];
                          $thirtyprice = ($percentage / 100) * $product['price'];
                          $combo_single_price_2 = round($product['price'] -$thirtyprice,0);

                          $product_qty = $product['quantity'];




                        ?>
                        <div class="col-md-1 text-center"> <span class="step theme-color">+</span> </div>
                        <div class="col-md-3 padding-0">
                            <div class="bbb_combo_3">
                                <div class="bbb_combo_image">
                                  <?php if($product_qty > 1) { ?>
                                  <div class="ribbon ribbon-top-right"><span><small style="font-size: 12px;">x</small> <?php echo $product_qty; ?></span></div>
                                <?php } ?>
                                  <img class="bbb_combo_image" src="<?Php echo $product['thumb']; ?>" alt="<?Php echo $product['name']; ?>">
                                </div>
                                <!-- <div class="d-flex flex-row justify-content-start"> <strike style="color:red;"> <span class="fs-10" style="color:black;">₹ 32,000<span> </span></span></strike> <span class="ml-auto"><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i><i class="fa fa-star p-rating"></i></span> </div> -->
                                <input type="hidden" id="1" value="<?php echo $product['product_id']; ?>" />

                                <div class="d-flex flex-row justify-content-start" style=" margin-bottom: 3px; "><strike style="color:red;font-size: 15px;"><?Php echo round($product['price'],0); ?></strike><span style="margin-top: -4px; font-size:22px;"> ₹<?Php echo $combo_single_price_2; ?></span></div> <span class="bbb_viewed_name"><?Php echo $product['name']; ?></span>
                            </div>
                        </div>



                        <?php } ?>
                    </div>
                    <div class="row">
                        <div class="col-xs-12" style="margin-left: 36px;">
                            <div class="boxo-pricing-items">
                                <div class="combo-pricing-item"> <span class="items_text">1 Item</span> <span class="combo_item_price">₹ <?php echo $main_price; ?></span> </div>
                                <div class="combo-plus"> <span class="plus-sign">+</span> </div>
                                <?php
                                $i =2;
                                $j = 1;
                                $total_combo_price_main = $main_price;
                                $count = count($comboproducts);
                                foreach ($comboproducts as $product) {
                                  $quantity = $product['quantity'];
                                  $percentage = $product['combo_percentage'];
                                  $thirtyprice = ($percentage / 100) * $product['price'];
                                  $cmb_single_price = $product['price'] -$thirtyprice;
                                  $combo_price = ($product['price'] -$thirtyprice)*$quantity;
                                  $total_combo_price_main = $total_combo_price_main +$combo_price;

                                  if($quantity > 1){

                                    $p_quantity = "x ".$product_qty;
                                  }else{

                                    $p_quantity = "";

                                  }

                                ?>

                                  <div class="combo-pricing-item"> <span class="items_text"><?php echo $i; ?> Item</span> <span class="combo_item_price">₹ <?php echo round($cmb_single_price,0); ?> <?php echo $p_quantity; ?></span> </div>
                                  <?php
                                        if(++$j ==$count){
                                   ?>
                                  <div class="combo-plus"> <span class="plus-sign">+</span> </div>
                                  <!-- <div class="combo-pricing-item"> <span class="items_text">1st Add-on</span> <span class="combo_item_price text-center">₹500</span> </div> -->


                                  <?php
                                }
                                    $i++;

                                     }
                                ?>


                                <div class="combo-plus"> <span class="plus-sign">=</span> </div>
                                <div class="combo-pricing-item"> <span class="items_text">Total</span> <span class="combo_item_price">₹ <?php echo round($total_combo_price_main,0); ?></span> </div>
                                <div class="add-both-cart-button"> <button type="button" id="combo-button-cart" class="theme-color btn btn-primary shop-button">Add to Cart</button> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

          <?php } ?>

            <div class="row row-underline">
                <div class="col-md-6"> <span class=" deal-text">Product description</span> </div>
                <div class="col-md-6"> <a href="#" data-abc="true"> <span class="ml-auto view-all"></span> </a> </div>
            </div>


            <div class="row">

                <div class="col-md-12">
                    <!--Email Template start-->


                   <?php echo $description; ?>




                    <!--Email template end-->
                </div>



            </div>


            <div class="row row-underline">
                <div class="col-md-6"> <span class=" deal-text">Specifications</span> </div>
                <div class="col-md-6"> <a href="#" data-abc="true"> <span class="ml-auto view-all"></span> </a> </div>
            </div>
            <div class="row">
                <div class="col-md-12">




                            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
                <table class="table table-bordered">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                         <thead>
                            <tr>
                                <td colspan="2"><strong style="color: #2874ef;"><?php echo $attribute_group['name']; ?></strong></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                 <tr>
                                    <td><?php echo $attribute['name']; ?></td>
                                    <td><?php echo $attribute['text']; ?></td>
                                </tr>


                            <?php } ?>
                        </tbody>
                    <?php } ?>
                </table>
            </div>
        <?php } ?>


                </div>
            </div>

            <!--Price comparision table-->
<!--
            <div class="row row-underline">
                <div class="col-md-6"> <span class=" deal-text">Product Compare</span> </div>
                <div class="col-md-6"> <a href="#" data-abc="true"> <span class="ml-auto view-all"></span> </a> </div>
            </div>

            <div>

              <style>

              .text-custom-truncate {
  display: -webkit-box !important;
  max-width: 230px;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden
}

.table thead tr th {
  background-color: white;
  z-index: 10
}

table {
  text-align: left;
  position: relative;
  border-collapse: collapse
}

.simple-head th {
  background: white;
  position: sticky;
  top: 0;
  box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4)
}

.table-responsive {
  overflow-x: inherit !important
}

.ml-1{
  margin-left:10px;
}

.display-flex{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
              </style>

              <div class="container-fluid">
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr class="simple-head">
                    <th width="20%">
                        <div class="bg-white h-100 w-100"> </div>
                    </th>
                    <th width="20%">
                        <div class="mb-2">
                            <div class="display-flex">
                              <img src="https://m.media-amazon.com/images/I/61WNxdAeAoL._AC_SS350_.jpg" width="50">
                              <span class="d-block text-custom-truncate ml-1"><?php echo $heading_title; ?></span> </div>
                            <hr>
                            <div class="display-flex">
                                <h6 class="mb-0"><?php echo $price; ?></h6> <button class="btn btn-sm btn-primary">Add to cart</button>
                            </div>
                        </div>
                    </th>
                    <th width="20%">
                        <div class="mb-2">
                            <div class="display-flex"> <img src="https://m.media-amazon.com/images/I/61WNxdAeAoL._AC_SS350_.jpg" width="50"> <span class="d-block text-custom-truncate ml-1">Lenovo IdeaPad Slim 5i 11th Gen Intel Core i5 15.6” FHD IPS Thin & Light Laptop (8GB/1TB HDD+256GB</span> </div>
                            <hr>
                            <div class="display-flex">
                                <h6 class="mb-0">₹ 68,500.00</h6> <button class="btn btn-sm btn-primary">Add to cart</button>
                            </div>
                        </div>
                    </th>
                    <th width="20%">
                        <div class="mb-2">
                            <div class="display-flex"> <img src="https://m.media-amazon.com/images/I/61WNxdAeAoL._AC_SS350_.jpg" width="50"> <span class="d-block text-custom-truncate ml-1">Lenovo IdeaPad Slim 5i 11th Gen Intel Core i5 15.6” FHD IPS Thin & Light Laptop (8GB/1TB HDD+256GB</span> </div>
                            <hr>
                            <div class="display-flex">
                                <h6 class="mb-0">₹ 68,500.00</h6> <button class="btn btn-sm btn-primary">Add to cart</button>
                            </div>
                        </div>
                    </th>
                    <th width="20%">
                        <div class="mb-2">
                            <div class="display-flex"> <img src="https://m.media-amazon.com/images/I/61WNxdAeAoL._AC_SS350_.jpg" width="50"> <span class="d-block text-custom-truncate ml-1">Lenovo IdeaPad Slim 5i 11th Gen Intel Core i5 15.6” FHD IPS Thin & Light Laptop (8GB/1TB HDD+256GB</span> </div>
                            <hr>
                            <div class="display-flex">
                                <h6 class="mb-0">₹ 68,500.00</h6> <button class="btn btn-sm btn-primary">Add to cart</button>
                            </div>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">Processor Name</th>
                    <td class="base-item">Core i5</td>
                    <td>Core i5</td>
                    <td>Core i7</td>
                    <td>R Series</td>
                </tr>
                <tr>
                    <th scope="row">Screen Size</th>
                    <td class="base-item">15.6 in</td>
                    <td>15.6 in</td>
                    <td>14.6 in</td>
                    <td>16 in</td>
                </tr>
                <tr>
                    <th>Operating system</th>
                    <td class="base-item">Windows 10</td>
                    <td>Windows 10 Home</td>
                    <td>Windows 8</td>
                    <td>Windows 10 pro</td>
                </tr>
                <tr>
                    <th scope="row">Processor Name</th>
                    <td class="base-item">Core i5</td>
                    <td>Core i5</td>
                    <td>Core i7</td>
                    <td>R Series</td>
                </tr>
                <tr>
                    <th scope="row">Screen Size</th>
                    <td class="base-item">15.6 in</td>
                    <td>15.6 in</td>
                    <td>14.6 in</td>
                    <td>16 in</td>
                </tr>
                <tr>
                    <th>Operating system</th>
                    <td class="base-item">Windows 10</td>
                    <td>Windows 10 Home</td>
                    <td>Windows 8</td>
                    <td>Windows 10 pro</td>
                </tr>
                <tr>
                    <th scope="row">Processor Name</th>
                    <td class="base-item">Core i5</td>
                    <td>Core i5</td>
                    <td>Core i7</td>
                    <td>R Series</td>
                </tr>
                <tr>
                    <th scope="row">Screen Size</th>
                    <td class="base-item">15.6 in</td>
                    <td>15.6 in</td>
                    <td>14.6 in</td>
                    <td>16 in</td>
                </tr>
                <tr>
                    <th>Operating system</th>
                    <td class="base-item">Windows 10</td>
                    <td>Windows 10 Home</td>
                    <td>Windows 8</td>
                    <td>Windows 10 pro</td>
                </tr>
                <tr>
                    <th scope="row">Processor Name</th>
                    <td class="base-item">Core i5</td>
                    <td>Core i5</td>
                    <td>Core i7</td>
                    <td>R Series</td>
                </tr>
                <tr>
                    <th scope="row">Screen Size</th>
                    <td class="base-item">15.6 in</td>
                    <td>15.6 in</td>
                    <td>14.6 in</td>
                    <td>16 in</td>
                </tr>
                <tr>
                    <th>Operating system</th>
                    <td class="base-item">Windows 10</td>
                    <td>Windows 10 Home</td>
                    <td>Windows 8</td>
                    <td>Windows 10 pro</td>
                </tr>
                <tr>
                    <th scope="row">Processor Name</th>
                    <td class="base-item">Core i5</td>
                    <td>Core i5</td>
                    <td>Core i7</td>
                    <td>R Series</td>
                </tr>
                <tr>
                    <th scope="row">Screen Size</th>
                    <td class="base-item">15.6 in</td>
                    <td>15.6 in</td>
                    <td>14.6 in</td>
                    <td>16 in</td>
                </tr>
                <tr>
                    <th>Operating system</th>
                    <td class="base-item">Windows 10</td>
                    <td>Windows 10 Home</td>
                    <td>Windows 8</td>
                    <td>Windows 10 pro</td>
                </tr>
                <tr>
                    <th scope="row">Processor Name</th>
                    <td class="base-item">Core i5</td>
                    <td>Core i5</td>
                    <td>Core i7</td>
                    <td>R Series</td>
                </tr>
                <tr>
                    <th scope="row">Screen Size</th>
                    <td class="base-item">15.6 in</td>
                    <td>15.6 in</td>
                    <td>14.6 in</td>
                    <td>16 in</td>
                </tr>
                <tr>
                    <th>Operating system</th>
                    <td class="base-item">Windows 10</td>
                    <td>Windows 10 Home</td>
                    <td>Windows 8</td>
                    <td>Windows 10 pro</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

            </div> -->

            <!--Price comparision table-->


            <div class="row row-underline">
                <div class="col-md-6"> <span class=" deal-text">FAQ's</span> </div>
                <div class="col-md-6"> <a href="#" data-abc="true"> <span class="ml-auto view-all"></span> </a> </div>
            </div>

            <div>

                <?php

                    if (isset($product_faqs)) {

                        //var_dump($product_faqs);

                         foreach ($product_faqs as $faqs ) {

                         // echo $faqs['faq_question'];

                ?>


                <h3 class="faq-title">Q. <?php echo $faqs['faq_question']; ?>?</h3>
                <p class="faq-desc">A. <?php echo $faqs['faq_answer']; ?>.</p>


                <?php

                         }

                    }



                   ?>


            </div>





            <div class="row row-underline">
                <div class="col-md-6"> <span class=" deal-text">Rating & Reviews</span> </div>
                <div class="col-md-6"> <a href="#" data-abc="true"> <span class="ml-auto view-all"></span> </a> </div>
            </div>

            <div class="row">
                <div class="col-md-5" style="border: solid 1px #e8e8e8;">

                     <div id="piechart" style="width:100%; height: 100%;"></div>

                </div>

                <div class="col-md-7">

                <div class="row">

                    <div class="col-md-6" style="border: solid 1px #e8e8e8;padding: 29px;">

                        <div class="text-center">

                        <?php if ($total_recommendation > 0) { ?>


                            <h1 style="
                            font-size: 44px;
                        "><?php echo $total_recommendation; ?>%</h1>

                        <span style="
                            margin-bottom: 20px;
                        ">Based on <?php echo $count_recommendation; ?> recommendation</span>

                        <?php }  else{ ?>


                            <h1 style="
                            font-size: 24px;
                        ">No one recommended yet!</h1>

                        <span style="
                            margin-bottom: 20px;
                        ">Be the first to recommend this product!</span>



                        <?php } ?>





                            <div class="row text-center" style="
    margin-top: 24px;
">

                                <div class="col-xs-8 text-left" style="
    line-height: 0.1em;
">

                                <h6 class="text-center" style="
    margin-left: 0px;line-height: 1.3em;
">Would you like to recommend this product?</h6>

                                </div>

                                <div class="col-xs-4 text-right">

                                    <div class="">

                                        <?php if ($logged) {

                                         ?>

                                        <button class="btn btn-primary btn-small theme-color" onclick="recommend('1','<?php echo $product_id; ?>');"><i class="fa fa-thumbs-up"></i></button>
                                        <button class="btn btn-primary btn-small theme-color" onclick="recommend('-1','<?php echo $product_id; ?>');"><i class="fa fa-thumbs-down"></i></button>

                                    <?php } else{ ?>


                                        <button class="btn btn-primary btn-small theme-color"data-toggle="modal" data-target="#login-modal" data-abc="true" ><i class="fa fa-thumbs-up"></i></button>
                                        <button class="btn btn-primary btn-small theme-color" data-toggle="modal" data-target="#login-modal" data-abc="true"><i class="fa fa-thumbs-down"></i></button>


                                    <?php }?>





                                    </div>

                                </div>


                            </div>

                        </div>

                    </div>

                    <div class="col-md-6 text-center" style="border: solid 1px #e8e8e8;padding: 29px;   ">

                        <h1 class="review-product" style="margin-top: 44px;">Have you used this product?</h1>

                        <button class="btn btn-primary btn-small theme-color" data-toggle="modal" data-target="#myModal">REVIEW</button>



                    </div>



                </div>

                </div>



            </div>
          <?php

           if ($product_review) {

           ?>

            <div class="row">

        <div class="col-md-4">

          <img alt="banner reviee image" src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1566025433/Genuine_Reviews.png" class="bsp_big-image" style="    width: 428px;
    height: 375px;">

        </div>


        <div class="col-md-8">


        <?php



                    $us_id= 0;

                 foreach ($product_review as $review) {


                ?>

            <div class="testimonials" style="margin-top: 10px;">
              <div class="active item">

                  <div class="carousel-info" style="display: -webkit-box !important;">

                <div class="profileImage" id="profileImage<?php echo $us_id; ?>" class="pull-left"></div>

                    <div>
                      <span class="testimonials-name" id="firstName<?php echo $us_id; ?>"><?php echo $review['author']; ?></span>
                      <!-- <span class="testimonials-post">5 days ago</span> -->
                      <!-- <span class="testimonials-post myellipse"> -->


                        <!-- <?php echo $review['text']; ?> -->

                        <span class="testimonials-post" style="margin-top: 5px;" id="teaser<?php echo $us_id; ?>"><?php echo $review['text']; ?></span>

                        <!-- <span class="testimonials-post myellipse" style="margin-top: 5px;" id="teaser<?php echo $us_id; ?>"><?php echo $review['text']; ?></span>

                        <span class="complete testimonials-post" style="margin-top: 5px;" id="complete<?php echo $us_id; ?>"><?php echo $review['text']; ?></span>

                        <span class="more" id="more<?php echo $us_id; ?>" onclick="viewmore('<?php echo $us_id;  ?>');">Read More</span> -->



                        <!-- </span> -->



                    </div>
                  </div>
                </div>
            </div>
             <!-- <script>profile('<?php echo  $us_id; ?>');</script> -->
             <script>profile("<?php echo $us_id;?>");</script>

        <?php
               $us_id++;

            }?>

            <div class="text-right">
                <br>
                <a href="" data-toggle="modal"  data-target="#mycomments"><span>view all comments</span></a>
            </div>


        </div>





      </div>


      <?php } ?>

<style type="text/css">
    .card {
     position: relative;
     display: flex;

     flex-direction: column;
     min-width: 0;
     word-wrap: break-word;
     background-color: #fff;
     background-clip: border-box;
     border: 1px solid #d2d2dc;
     border-radius: 4px;
     -webkit-box-shadow: 0px 0px 5px 0px rgb(249, 249, 250);
     -moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1);
     box-shadow: 0px 0px 5px 0px rgb(161, 163, 164)
 }

  .card .card-body {
     padding: 1rem 1rem
 }

 .card-body {
     flex: 1 1 auto;
     padding: 1.25rem
 }

 .cross {
     padding: 10px;
     color: #d6312d;
     cursor: pointer
 }

 .continue:focus {
     outline: none
 }

 .continue {
     border-radius: 5px;
     text-transform: capitalize;
     font-size: 13px;
     padding: 8px 19px;
     cursor: pointer;
     color: #fff;
     background-color: #D50000
 }

 .continue:hover {
     background-color: #D32F2F !important
 }

 .modal-dialog{
    overflow-y: initial !important
}
.modal-body{
    height: 250px;
    overflow-y: auto;
}
</style>


<div class="modal fade" id="mycomments" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="card">
            <div class="text-right cross"> <i class="fa fa-times" data-dismiss="modal"></i> </div>
            <div class="card-body text-center">


                <?php



                    $us_id= 0;

                 foreach ($product_review as $review) {


                ?>


                <div class="text-left">
                      <span class="testimonials-name"><?php echo $review['author']; ?></span>
                      <br>

                        <span class="testimonials-post" style="margin-top: 5px;"><?php echo $review['text']; ?></span>



                    </div>
                <hr>

        <?php
               $us_id++;

            }?>

            </div>
        </div>
         </div>
    </div>
</div>







<style type="text/css">
     @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');

 * {
     margin: 0;
     padding: 0;
     -webkit-font-smoothing: antialiased;
     -webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
     text-shadow: rgba(0, 0, 0, .01) 0 0 1px
 }

 body {
     font-family: 'Rubik', sans-serif;
     font-size: 14px;
     font-weight: 400;
     background: #eff6fa;
     color: #000000
 }

 div {
     display: block;
     position: relative;
     -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
     box-sizing: border-box
 }

 /*.bbb_viewed {
     padding-top: 51px;
     padding-bottom: 60px;
     background: #eff6fa
 }*/

 .bbb_main_container {
     background-color: #fff;
     padding: 11px
 }

 .bbb_viewed_title_container {
     border-bottom: solid 1px #dadada
 }

 .bbb_viewed_title {
     margin-bottom: 16px;
     margin-top: 8px
 }

 .bbb_viewed_nav_container {
     position: absolute;
     right: -5px;
     bottom: 14px
 }

 .bbb_viewed_nav {
     display: inline-block;
     cursor: pointer
 }

 .bbb_viewed_nav i {
     color: #dadada;
     font-size: 18px;
     padding: 5px;
     -webkit-transition: all 200ms ease;
     -moz-transition: all 200ms ease;
     -ms-transition: all 200ms ease;
     -o-transition: all 200ms ease;
     transition: all 200ms ease
 }

 .bbb_viewed_nav:hover i {
     color: #606264
 }

 .bbb_viewed_prev {
     margin-right: 15px
 }

 .bbb_viewed_slider_container {
     padding-top: 13px
 }

 .bbb_viewed_item {
     width: 100%;
     background: #FFFFFF;
     border-radius: 2px;
     padding-top: 25px;
     padding-bottom: 25px;
     padding-left: 30px;
     padding-right: 30px
 }

 .bbb_viewed_image {
     width: 150px;
     height: 150px
 }

 .bbb_viewed_image img {
     display: block;
     max-width: 100%
 }

 .bbb_viewed_content {
     width: 100%;
     margin-top: 25px
 }

 .bbb_viewed_price {
     font-size: 16px;
     color: #000000;
     font-weight: 500
 }

 .bbb_viewed_item.discount .bbb_viewed_price {
     color: #df3b3b
 }

 .bbb_viewed_price span {
     position: relative;
     font-size: 12px;
     font-weight: 400;
     color: rgba(0, 0, 0, 0.6);
     margin-left: 8px
 }

 .bbb_viewed_price span::after {
     display: block;
     position: absolute;
     top: 6px;
     left: -2px;
     width: calc(100% + 4px);
     height: 1px;
     background: #8d8d8d;
     content: ''
 }

 .bbb_viewed_name {
     margin-top: 3px;
     display: block;
    display: -webkit-box !important;
    max-width: 200px;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
 }

 .bbb_viewed_name a {
     font-size: 14px;
     color: #000000;
     -webkit-transition: all 200ms ease;
     -moz-transition: all 200ms ease;
     -ms-transition: all 200ms ease;
     -o-transition: all 200ms ease;
     transition: all 200ms ease
 }

 .bbb_viewed_name a:hover {
     color: #0e8ce4
 }

 .item_marks {
     position: absolute;
     top: 18px;
     left: 18px
 }

 .item_mark {
     display: none;
     width: 36px;
     height: 36px;
     border-radius: 50%;
     color: #FFFFFF;
     font-size: 10px;
     font-weight: 500;
     line-height: 36px;
     text-align: center
 }

 .item_discount {
     background: #df3b3b;
     margin-right: 5px
 }

 .item_new {
     background: #0e8ce4
 }

 .bbb_viewed_item.discount .item_discount {
     display: inline-block
 }

 .bbb_viewed_item.is_new .item_new {
     display: inline-block
 }



/*ratings*/

.progress {
    height: 31px;
        margin-bottom: 10px;
}


.progress .skill {
      font: normal 12px "Open Sans Web";
    line-height: 32px;
    padding: 0;
    margin: 0 0 0 20px;
    text-transform: uppercase;
}
.progress .skill .val {
  float: right;
  font-style: normal;
  margin: 0 20px 0 0;
}

.progress-bar {
  text-align: left;
  transition-duration: 3s;
}






.content {
    padding-top: 30px;
}

/* Testimonials */
.testimonials blockquote {
    background: #f8f8f8 none repeat scroll 0 0;
    border: medium none;
    color: #666;
    display: block;
    font-size: 14px;
    line-height: 20px;
    padding: 15px;
    position: relative;
}
.testimonials blockquote::before {
    width: 0;
    height: 0;
  right: 0;
  bottom: 0;
  content: " ";
  display: block;
  position: absolute;
    border-bottom: 20px solid #fff;
  border-right: 0 solid transparent;
  border-left: 15px solid transparent;
  border-left-style: inset; /*FF fixes*/
  border-bottom-style: inset; /*FF fixes*/
}
.testimonials blockquote::after {
    width: 0;
    height: 0;
    right: 0;
    bottom: 0;
    content: " ";
    display: block;
    position: absolute;
    border-style: solid;
    border-width: 20px 20px 0 0;
    border-color: #e63f0c transparent transparent transparent;
}
.testimonials .carousel-info img {
    border: 1px solid #f5f5f5;
    border-radius: 150px !important;
    height: 75px;
    padding: 3px;
    width: 75px;
}
.testimonials .carousel-info {
    overflow: hidden;
}
.testimonials .carousel-info img {
    margin-right: 15px;
}
.testimonials .carousel-info span {
    display: block;
}
.testimonials span.testimonials-name {
        color: #2874ef;
    font-size: 17px;
    font-weight: 500;
    margin: 3px 0 -2px;
}
.testimonials span.testimonials-post {
    color: #656565;
    font-size: 12px;
}

.testimonials-post{
        margin-top: 9px;
    font-weight: 300;
    font-size: 13px;
}

.testimonials-name{
        font-size: 19px;
    color: blue;
}




</style>













  </div>






</div>






<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
<div class="bbb_viewed">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="bbb_main_container">
                    <div class="bbb_viewed_title_container">
                        <h3 class="bbb_viewed_title">Related items</h3>
                        <div class="bbb_viewed_nav_container">
                            <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                            <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                        </div>
                    </div>
                    <div class="bbb_viewed_slider_container">
                        <div class="owl-carousel owl-theme bbb_viewed_slider">

                            <?php
                            if ($products) {


                                foreach ($products as $product) {


                                ?>
                            <div class="owl-item">
                                <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                    <div class="bbb_viewed_image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?Php echo $product['name']; ?>"></a></div>
                                    <div class="bbb_viewed_content text-center">
                                        <div class="bbb_viewed_price"><?php echo $product['price']; ?><!-- <span>₹13300</span> --></div>
                                        <div class="bbb_viewed_name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                                    </div>

                                </div>
                            </div>
                        <?php }} ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    .mb-10{
         margin-bottom: 10px;

}

.mt-100 {
     margin-top: 100px
 }



.modal-content{
         border-radius: 1px;

}

.modal-header{
     border-bottom: 1px solid #ffffff;
}

.btn-mdl:focus {

     box-shadow: 0 0 0 0.2rem rgb(255, 255, 255);

}

.close:focus{
     box-shadow: 0 0 0 0.2rem rgb(255, 255, 255);
}

.btn-mdl.btn-out {
    outline: 1px solid #fff;
    outline-offset: -5px
}

.btn-mdl {
    border-radius: 2px;
    text-transform: capitalize;
    font-size: 15px;
    padding: 10px 19px;
    cursor: pointer;
    color: #fff
}

.mdl-form:focus {

     box-shadow: 0 0 0 0.2rem rgb(255, 255, 255);


}

.mdl-form{
     border-radius: 0px !important;

}

.modal-header .close {
    margin-top: -26px !important;
}


@media screen and (min-width: 768px){
.modal-dialog {
     left: 0% !important;

}}
</style>


     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.2.0/jquery.rateyo.min.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.2.0/jquery.rateyo.min.js"></script>
      <script type="text/javascript">

                             $(function () {

      $("#rateYo").rateYo({

        onSet: function (rating, rateYoInstance) {
           rating = Math.ceil(rating);
           $('#rating_input').val(rating);//setting up rating value to hidden field
           //alert("Rating is set to: " + rating);
        }
      });
    });

      </script>
      <div id="myModal" class="modal fade" role="dialog">
<div class="modal-dialog">


<div class="modal-content">
<div class="modal-header">
  <h4>Review this product</h4>
  <button type="button" class="close" data-dismiss="modal">&times;</button>
</div>
<div class="modal-body">
<div id="message" style="text-align: center; color: green;"></div>



                                    <input type="text" name="name" class="form-control mb-10 mdl-form" size="10" id="capacity_txt_modal" placeholder="your name" />

                                    <textarea type="text" name="text" class="form-control mb-10" placeholder="What would you like to say about this product"></textarea>

                                    <div style="display:inline-block;" id="rateYo"></div>
                                    <input type="hidden" name="rating" id="rating_input"/>


</div>

<br/>

<div class="modal-footer">
<button class="btn btn-out btn-primary btn-square btn-mdl" id="button-review1">Save Review</button>

</div>
</div>
</div>

</div>






</div>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
    $(document).ready(function(){

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

var data = google.visualization.arrayToDataTable([
['Task', 'Hours per Day'],
['Excellent', randomIntFromInterval(18,20)],
['Very Good',randomIntFromInterval(15,20)],
['Good', randomIntFromInterval(10,15)],
['Average', randomIntFromInterval(10,15)],
['Below Average', randomIntFromInterval(1,10)]
]);

var options = {
title: 'Product Ratings'
};

var chart = new google.visualization.PieChart(document.getElementById('piechart'));

chart.draw(data, options);
}


});


    function randomIntFromInterval(min, max) { // min and max included
  return Math.floor(Math.random() * (max - min + 1) + min);
}



</script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>

<script type="text/javascript">
    $('#button-review1').on('click', function() {
    $.ajax({
        url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
        type: 'post',
        dataType: 'json',
        data: 'g-recaptcha-response=' + encodeURIComponent($('textarea[name=\'g-recaptcha-response\']').val()) + '&name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']').val()),
        beforeSend: function() {
            $('#button-review1').button('loading');
        },
        error:function(data){

            alert(data);

        },
        complete: function() {
            $('#button-review1').button('reset');
        },
        success: function(json) {
            console.log(json);
            $('.alert-success, .alert-danger').remove();

            if (json['error']) {
                $('#message').append('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
            }

            if (json['success']) {
                $('#message').append('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                $('input[name=\'name\']').val('');
                $('textarea[name=\'text\']').val('');
                $('input[name=\'rating\']:checked').prop('checked', false);
            }
        }
    });
});

   function recommend(recommend,product_id){

        $.ajax({
        url: 'index.php?route=product/product/recommend&product_id=<?php echo $product_id; ?>',
        type: 'post',
        // dataType: 'json',
        // data: {'recommend': recommend,'product_id': product_id},
         data: "recommend="+recommend,
        beforeSend: function(data) {
            //$('#button-review1').button('loading');
            console.log("Hitesh"+data);
        },
        error:function(data){

            console.log(data);

        },
        complete: function() {
            //$('#button-review1').button('reset');
        },
        success: function(json) {

            if (json['error']) {
                 $('#recommend').append('<span>' + json['error'] + '</span>');
                toastr.options = {
                  "closeButton": true,
                  "debug": true,
                  "newestOnTop": false,
                  "progressBar": true,
                  "positionClass": "toast-bottom-left",
                  "preventDuplicates": false,
                  "showDuration": "300",
                  "hideDuration": "1000000",
                  "timeOut": "5000",
                  "extendedTimeOut": "1000",
                  "showEasing": "swing",
                  "hideEasing": "linear",
                  "showMethod": "fadeIn",
                  "hideMethod": "fadeOut"
                }
      toastr["warning"]("You have already rated this product", "Recommendation!");
            }

            if (json['success']) {
                 $('#recommend').append('<span>' + json['success'] + '</span>');

               toastr.options = {
                  "closeButton": true,
                  "debug": true,
                  "newestOnTop": false,
                  "progressBar": true,
                  "positionClass": "toast-bottom-left",
                  "preventDuplicates": false,
                  "showDuration": "300",
                  "hideDuration": "1000000",
                  "timeOut": "5000",
                  "extendedTimeOut": "1000",
                  "showEasing": "swing",
                  "hideEasing": "linear",
                  "showMethod": "fadeIn",
                  "hideMethod": "fadeOut"
                }
      toastr["success"]("Thanks for your recommendation", "Recommendation!");

            }
        }
    });



   }



</script>





<script type="text/javascript">


                            $(document).ready(function()
{


        if($('.bbb_viewed_slider').length)
        {
            var viewedSlider = $('.bbb_viewed_slider');

            viewedSlider.owlCarousel(
            {
                loop:true,
                margin:30,
                autoplay:true,
                autoplayTimeout:6000,
                nav:false,
                dots:false,
                responsive:
                {
                    0:{items:1},
                    575:{items:2},
                    768:{items:3},
                    991:{items:4},
                    1199:{items:6}
                }
            });

            if($('.bbb_viewed_prev').length)
            {
                var prev = $('.bbb_viewed_prev');
                prev.on('click', function()
                {
                    viewedSlider.trigger('prev.owl.carousel');
                });
            }

            if($('.bbb_viewed_next').length)
            {
                var next = $('.bbb_viewed_next');
                next.on('click', function()
                {
                    viewedSlider.trigger('next.owl.carousel');
                });
            }
        }


    });



</script>



 <script type="text/javascript">
    $(".p-quanity-adder .add-action1").click( function(){
        if( $(this).hasClass('add-up1') ) {
          //  $("[name=quantity]",'.p-quanity-adder').val( parseInt($("[name=quantity]",'.p-quanity-adder').val()) + 1 );
           $("#quantity_input").val( parseInt($("#quantity_input").val()) + 1 );

           $(".updateqty").text($("#quantity_input").val());
           // var rewards = $("#product_reward").val();
          var rewards = <?php echo $reward; ?>;
           var quanity_products = $("#quantity_input").val();

           total_rewards = rewards * quanity_products;
           //alert(total_rewards+"---------"+quanity_products);
           // $("#quantity_input").text($("#quantity_input").val() * $("#product_reward").val());
            $("#product_reward").val(total_rewards);


        }else {
            if( parseInt($("[name=quantity]",'.p-quanity-adder').val())  > 1 ) {
              //  $("input",'.p-quanity-adder').val( parseInt($("[name=quantity]",'.p-quanity-adder').val()) - 1 );
              $("[name=quantity]").val( parseInt($("[name=quantity]").val()) - 1 );
              $(".updateqty").text($("#quantity_input").val());
               $("#quantity_input").text($("#quantity_input").val() * $("#product_reward").val());
            }
        }
    } );
</script>





<script type="text/javascript">
   $(document).ready(function() {
      $('.progress .progress-bar').css("width",
                function() {
                    return $(this).attr("aria-valuenow") + "%";
                }
        )
    });

</script>



<?php if(isset($update_price_status) && $update_price_status) {  ?>



                    <script type="text/javascript">

                        $("#product input[type='checkbox']").click(function() {
                            changePrice();
                        });

                        $("#product input[type='radio']").click(function() {

                            changePrice();
                        });

                        $("#product select").change(function() {

                            changePrice();
                        });

                        $("#input-quantity").blur(function() {

                            changePrice();
                        });

                        function changePrice() {
                            //alert("djfh");
                            $.ajax({
                                url: 'index.php?route=product/product/updatePrice&product_id=<?php echo $product_id; ?>',
                                type: 'post',
                                dataType: 'json',
                                data: $('#product input[name=\'quantity\'], #product select, #product input[type=\'checkbox\']:checked, #product input[type=\'radio\']:checked'),
                                beforeSend: function() {

                                },
                                error: function () {

                                   // alert("erro");

                                 },
                                complete: function() {

                                },
                                success: function(json) {


                                   // $('.price-new').text(json['new_price_found']);

                                   // alert(json);
                                    // alert(json['total_price']);
                                  //  $('.alert-success, .alert-danger').remove();

                                    if(json['new_price_found']) {
                                        $('.price-old').text(json['total_price']);
                                        $('.product-tax').html(json['tax_price']);
                                        $('.reward').text(json['rewards']);
                                        $('#product_reward').val(json['rewards']);

                                    } else {
                                        $('.price-new').text(json['total_price']);
                                        $('.product-tax').html(json['tax_price']);
                                        $('.reward').text(json['rewards']);
                                        $('#product_reward').val(json['rewards']);
                                    }
                                }
                            });
                        }
                    </script>



                <?php } ?>
