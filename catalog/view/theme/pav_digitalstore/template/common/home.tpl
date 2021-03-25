<?php echo $header; ?> <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>

 <style type="text/css">
    .card {
    background: #fff;
    border-width: 0;
    border-radius: .25rem;
    box-shadow: 0 1px 3px rgba(0, 0, 0, .05);
    margin-bottom: 1.5rem
}



.bbb_background {
    background-color: #E0E0E0 !important
}

.trans_200 {
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease
}

.trans_300 {
    -webkit-transition: all 300ms ease;
    -moz-transition: all 300ms ease;
    -ms-transition: all 300ms ease;
    -o-transition: all 300ms ease;
    transition: all 300ms ease
}

.trans_400 {
    -webkit-transition: all 400ms ease;
    -moz-transition: all 400ms ease;
    -ms-transition: all 400ms ease;
    -o-transition: all 400ms ease;
    transition: all 400ms ease
}

.trans_500 {
    -webkit-transition: all 500ms ease;
    -moz-transition: all 500ms ease;
    -ms-transition: all 500ms ease;
    -o-transition: all 500ms ease;
    transition: all 500ms ease
}

.fill_height {
    height: 100%
}

.super_container {
    width: 100%;
    overflow: hidden
}

.prlx_parent {
    overflow: hidden
}

.prlx {
    height: 130% !important
}

.nopadding {
    padding: 0px !important
}

.button {
    display: inline-block;
    background: #0e8ce4;
    border-radius: 5px;
    height: 48px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease
}

.button a {
    display: block;
    font-size: 18px;
    font-weight: 400;
    line-height: 48px;
    color: #FFFFFF;
    padding-left: 35px;
    padding-right: 35px
}

.button:hover {
    opacity: 0.8
}

.trends {
    padding-top: 8px;
    padding-bottom: 0px;
}



/*.bbb_overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(203, 225, 238, 0.3)
}

.bbb_background {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center center
}*/

.bbb_container {
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    padding-right: 40px

}

.bbb-div{

  margin-top: 163px;
}

.bbb_title {
    padding-right: 50px;
        font-size: 40px !important;
    line-height: 1;
        color: #5967f6;

}

.bbb_text {
    margin-top: 17px
}

.bbb_text p:last-child {
    margin-bottom: 0px
}

.bbb_slider_nav {
    margin-top: 27px
}

.bbb_nav {
    display: inline-block;
    width: 36px;
    height: 36px;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
    border-radius: 50%;
    text-align: center;
    cursor: pointer;
    margin-right: 16px;
    background-color: #2d8ce4
}

.bbb_nav:last-child {
    margin-right: 0px
}

.bbb_nav i {
    line-height: 36px;
    color: #fff;
    font-size: 18px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease
}

.bbb_nav:hover i {
    color: #474747
}

.bbb_item {
    background: #FFFFFF;
    border-radius: 1px;
    padding: 31px;
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

.bbb_image {
    width: 100%;
    height: 212px
}

.bbb_image img {
    width: auto !important;
    max-width: 100% !important
}

.bbb_category a {
    font-size: 12px;
    color: rgba(0, 0, 0, 0.5)
}

.bbb_category a:hover {
    color: #0e8ce4
}

.bbb_content {
    margin-top: 24px
}

.bbb_name {
    float: left
}

.bbb_name a {
    font-size: 16px;
    color: #000000
}

.bbb_name a:hover {
    color: #0e8ce4
}

.bbb_price {
    font-size: 16px;
    font-weight: 500;
    float: right
}

.bbb_fav {
    position: absolute;
    top: 18px;
    right: 18px;
    width: 36px;
    height: 36px;
    background: #FFFFFF;
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
    border-radius: 50%;
    visibility: hidden;
    opacity: 0;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
    cursor: pointer
}

.bbb_fav.active {
    visibility: visible;
    opacity: 1
}

.bbb_fav:hover {
    box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3)
}

.bbb_item:hover .bbb_fav {
    visibility: visible;
    opacity: 1;
    top: 18px
}

.bbb_fav i {
    display: block;
    position: absolute;
    left: 50%;
    -webkit-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    -o-transform: translateX(-50%);
    transform: translateX(-50%);
    color: #cccccc;
    line-height: 36px;
    pointer-events: none;
    z-index: 0;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease
}

.bbb_fav.active i {
    color: red
}

.bbb_item:hover .bbb_fav {
    visibility: visible;
    opacity: 1
}

.bbb_marks {
    position: absolute;
    left: 18px;
    top: 18px
}

.bbb_mark {
    display: none;
    width: 36px;
    height: 36px;
    font-size: 10px;
    font-weight: 500;
    color: #FFFFFF;
    border-radius: 50%;
    line-height: 36px;
    text-align: center
}

.bbb_discount {
    background: #df3b3b
}

.bbb_item.discount .bbb_discount,
.bbb_item.is_new .bbb_new {
    display: block
}

.bbb_new {
    background: #0e8ce4
}

@media only screen and (max-width: 991px) {
    .bbb_slider_container {
        margin-top: 15px
    }
}

.viewed {
     padding-top: 51px;
     padding-bottom: 60px;
     background: #eff6fa
 }

 .bbb_viewed_title_container {
     border-bottom: solid 1px #dadada
 }

 .bbb_viewed_title {
     margin-bottom: 14px
 }

 .bbb_viewed_nav_container {
    position: absolute;
    right: 15px;
    bottom: -25px;
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
     padding-top: 50px
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
     width: 115px;
     height: 115px
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
     margin-top: 3px
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





/*Deals of the Week*/


div
{
    display: block;
    position: relative;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.bbb_deals_featured
{
    width: 100%;
}

.bbb_deals
{
    width: 36%;
    margin-right: 7%;
    padding-top: 85px;
    padding-left: 50px;
    padding-right: 50px;
    padding-bottom: 54px;
    margin-left: 1px;
    box-shadow: 0px 1px 4px rgba(0,0,0,0.1);
    border-radius: 5px;
    background: #fff;
}
.bbb_deals_title
{
    position: absolute;
    top: 27px;
    left: 40px;
    font-size: 18px;
    font-weight: 500;
    color: #000000;
}
.bbb_deals_slider_container
{
    width: 100%;
}
.bbb_deals_item
{
    width: 100% !important;
}
.bbb_deals_image
{
    width: 100%;
        margin-top: 23px;
}
.bbb_deals_image img
{
    width: 100%;
}
.bbb_deals_content
{
    margin-top: 33px;
}
.bbb_deals_item_category a
{
    font-size: 14px;
    font-weight: 400;
    color: rgba(0,0,0,0.5);
}
.bbb_deals_item_price_a
{
    font-size: 14px;
    font-weight: 400;
    color: rgba(0,0,0,0.6);
}
.bbb_deals_item_name
{
    font-size: 24px;
    font-weight: 400;
    color: #000000;
}
.bbb_deals_item_price
{
    font-size: 24px;
    font-weight: 500;
    color: #df3b3b;
}
.available
{
    margin-top: 19px;
}
.available_title
{
    font-size: 12px;
    color: rgba(0,0,0,0.5);
    font-weight: 400;
}
.available_title span
{
    font-weight: 700;
}
.sold_title
{
    font-size: 12px;
    color: rgba(0,0,0,0.5);
    font-weight: 400;
}
.sold_title span
{
    font-weight: 700;
}
.available_bar
{
    width: 100%;
    height: 10px;
    background: #e8e8e8;
    border-radius: 5px;
    overflow: hidden;
    margin-top: 5px;
}
.available_bar span
{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    border-radius: 5px;
    background: #0e8ce4;
}
.bbb_deals_timer
{
    margin-top: 30px;
}
.bbb_deals_timer_title
{
    font-size: 14px;
    font-weight: 500;
    color: #000000;
}
.bbb_deals_timer_subtitle
{
    font-size: 12px;
    color: rgba(0,0,0,0.5);
}
.bbb_deals_timer_content
{
    padding-bottom: 17px;
}
.bbb_deals_timer_box
{
    width: 173px;
    padding-left: 3px;
    padding-right: 3px;
    border: solid 1px #cccccc;
    border-radius: 5px;
    margin-right: 1px;
}
.bbb_deals_timer_unit
{
    width: 33.33333333%;
    font-size: 24px;
    font-weight: 500;
    color: #000000;
    padding-left: 12px;
    padding-right: 12px;
    padding-top: 3px;
    padding-bottom: 2px;
    float: left;
}
.bbb_deals_timer_unit:first-child::after,
.bbb_deals_timer_unit:nth-child(2)::after
{
    display: block;
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    right: 0px;
    width: 1px;
    height: 25px;
    background: #e5e5e5;
    content: '';
}
.bbb_deals_timer_unit span
{
    position: absolute;
    display: block;
    bottom: -22px;
    left: 50%;
    -webkit-transform: translateX(-50%);
    -moz-transform: translateX(-50%);
    -ms-transform: translateX(-50%);
    -o-transform: translateX(-50%);
    transform: translateX(-50%);
    font-size: 8px;
    color: rgba(0,0,0,0.5);
    text-transform: uppercase;
}
.bbb_deals_slider_nav_container
{
    position: absolute;
    top: 20px;
    right: 40px;
}
.bbb_deals_slider_nav
{
    display: inline-block;
    cursor: pointer;
}
.bbb_deals_slider_nav i
{
    font-size: 18px;
    padding: 10px;
    color: #666666;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
}
.bbb_deals_slider_nav:hover i
{
    color: #000000;
}
.bbb_deals_slider_nav:active i
{
    color: #df3b3b;
}
.bbb_deals_slider_prev
{
    margin-right: 4px;
}

.m-b-20{

    margin-bottom: 20px;
}

.m-t-20{

    margin-top:20px;
}

.m-t-12{

    margin-top:12px;
}

.padding-0{

    padding-left: 0;
    padding-right: 0;

}

.image-decoration{

    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

img-style{

        box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

@media only screen and (max-width: 1199px)
{

    .bbb_deals_timer_box
    {
        width: 150px;
    }
    .bbb_deals_timer_unit
    {
        font-size: 20px;
    }

}



@media only screen and (max-width: 991px)
{

    .bbb_deals
    {
        width: 100%;
        margin-right: 0px;
    }

    .shipping-container{

        display: none;
    }

}

@media (min-width: 550px) and (max-width: 990px)
{

  .bsp_big-image{
      display: none !important;
  }

}

@media only screen and (max-width: 575px)
{

    .bbb_deals
    {
        padding-left: 15px;
        padding-right: 15px;
    }
    .bbb_deals_title
    {
        left: 15px;
        font-size: 16px;
    }
    .bbb_deals_slider_nav_container
    {
        right: 5px;
    }
    .bbb_deals_item_name, .bbb_deals_item_price
    {
        font-size: 20px;
    }
    .bbb_deals_item_category a, .bbb_deals_item_price_a
    {
        font-size: 12px;
    }
    .bbb_deals_timer_unit
    {
        font-size: 16px;
    }

}








/*Deals of the week*/

.bbb_deals_featured {
    width: 100%
}

.bbb_deals {
    width: 100%;
    margin-right: 7%;
    padding-top: 85px;
    padding-left: 50px;
    padding-right: 50px;
    padding-bottom: 54px !important;
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin-top: 20px
}

.bbb_deals_title {
    position: absolute;
    top: 27px;
    left: 40px;
    font-size: 18px;
    font-weight: 500;
    color: #000000
}

.bbb_deals_slider_container {
    width: 100%
}

.bbb_deals_item {
    width: 100% !important
}

.bbb_deals_image {
    width: 100%
}

.bbb_deals_image img {
    width: 100%
}

.bbb_deals_content {
    margin-top: 33px
}

.bbb_deals_item_category a {
    font-size: 14px;
    font-weight: 400;
    color: rgb(88, 87, 83);
}

.bbb_deals_item_price_a {
    font-size: 14px;
    font-weight: 400;
        color: rgb(88, 87, 83);
}

.bbb_deals_item_name {
    font-size: 21px;
    font-weight: 400;
    color: #000000
}

.bbb_deals_item_price {
    font-size: 21px;
    font-weight: 500;
    color: #2d8ce5;
}

.bbb_item_deals{

        background: #FFFFFF;
    border-radius: 1px;
    padding: 15px;
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}



/*Discount ribbon start*/


.ribbon {
    width: 150px;
    height: 150px;
    overflow: hidden;
    position: absolute
}

.ribbon::before,
.ribbon::after {
    position: absolute;
    z-index: -1;
    content: '';
    display: block;
    border: 5px solid #2980b9
}

.ribbon span {
    position: absolute;
    display: block;
    width: 225px;
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
    top: -10px;
    right: -10px
}

.ribbon-top-right::before,
.ribbon-top-right::after {
    border-top-color: transparent;
    border-right-color: transparent
}

.ribbon-top-right::before {
    top: 0;
    left: 17px
}

.ribbon-top-right::after {
    bottom: 17px;
    right: 0
}

.ribbon-top-right span {
    left: -25px;
    top: 30px;
    transform: rotate(45deg)
}

/*Discount Ribbon end*/


.row-underline{

        content: "";
    display: block;
    border-bottom: 2px solid #3798db;
    margin: 0px 0px;

}

.deal-text{

        margin-left: -10px;
    font-size: 25px;
    margin-bottom: 10px;
    /* margin-top: 10px; */
    color: #000;
    font-weight: 700;
}

.view-all{

        margin-right: -10px;
    font-size: 14px;
}




.char_icon {
    margin-top: 15px;
}



.char_item {
    width: 100%;
    height: 100px;
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    border: solid 1px #e8e8e8;
    padding-left: 36px;
    background-color: #fff;
    border-radius: 5px;
}

.char_content {
    margin-top: 22px;

}

.char_title {
    font-size: 20px;
    font-weight: 500;
    color: #666666;
}

.char_subtitle {
    font-size: 12px;
    font-weight: 400;
    color: rgba(0,0,0,0.5);
    margin-top: 3px;
}



.bsp_row-underline{

        content: "";
    display: block;
    border-bottom: 2px solid #3798db;
    margin-bottom: 20px

}

.bsp_deal-text{

    margin-left: -10px;
    font-size: 25px;
    margin-bottom: 10px;
    color: #000;
    font-weight: 700;
}

.bsp_view-all{

            margin-right: -6px;
    font-size: 14px;
    margin-top: 5px;

}

.bsp_image {

    width: 150px !important;
    height: 150px !important;

}

.bsp_big-image{
    box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin-top: 0px;
    height: 350px !important;
}

}

.image-center{

    text-align: center;
}

.bsp_padding-0{

    padding: 3px;
}

.bsp_bbb_item{

    padding: 21px;
    background-color: #fff;
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    border: solid 1px #e8e8e8;


}

.m-t-15{

    margin-top: 15px;
}

.bsp_card-text{

    color: blue;
}





 .bbb_main_container{
         background-color: #fff;
    padding: 11px;
    margin-right: -2px;
    margin-left: 0px;
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    border: solid 1px #e8e8e8;
    border-radius: 5px;
 }

 .bbb_main_container_top{

         background-color: #fff;
    padding: 11px;
    margin-right: -12px;
    margin-left: 0px;
    box-shadow: 0px 1px 3px rgba(0,0,0,0.1);
    border: solid 1px #e8e8e8;
    border-radius: 5px;
    margin-top: 0px;

 }

 .bbb_bestselling_title_container {
     border-bottom: solid 1px #dadada
 }

 .bbb_bestselling_title {
         margin-bottom: 16px;
    margin-top: 8px;

 }

 .bbb_bestselling_nav_container {
     position: absolute;
     right: 1px;
     bottom: 20px
 }

 .bbb_bestselling_nav {
     display: inline-block;
     cursor: pointer
 }

 .bbb_bestselling_nav i {
     color: #dadada;
     font-size: 18px;
     padding: 5px;
     -webkit-transition: all 200ms ease;
     -moz-transition: all 200ms ease;
     -ms-transition: all 200ms ease;
     -o-transition: all 200ms ease;
     transition: all 200ms ease
 }

 .bbb_bestselling_nav:hover i {
     color: #606264
 }

 .bbb_bestselling_prev {
     margin-right: 15px
 }

 .bbb_bestselling_slider_container {
     padding-top: 13px;
 }

 .bbb_bestselling_item {
        width: 100%;
    background: #FFFFFF;
    border-radius: 2px;
    padding-top: 10px;
    padding-bottom: 13px;
    padding-left: 30px;
    padding-right: 30px;
 }

 .bbb_bestselling_image {
           width: 180px;
           height: 150px;
 }

 .bbb_bestselling_image img {
     display: block;
     max-width: 100%;

 }

 .bbb_bestselling_content {
     width: 100%;
     margin-top: 25px
 }

 .bbb_bestselling_price {
     font-size: 16px;
     color: #000000;
     font-weight: 500
 }

 .bbb_bestselling_item.discount .bbb_bestselling_price {
     color: #000
 }

 .bbb_bestselling_price span {
     position: relative;
     font-size: 12px;
     font-weight: 400;
     color: rgba(0, 0, 0, 0.6);
     margin-left: 8px
 }

 .bbb_bestselling_price span::after {
     display: block;
     position: absolute;
     top: 6px;
     left: -2px;
     width: calc(100% + 4px);
     height: 1px;
     background: #8d8d8d;
     content: ''
 }

 .bbb_bestselling_name {
     margin-top: 3px
         /* width: 300px; */
    height: 2.8em;
    line-height: 1.4em;
    display: flex;
    -webkit-line-clamp: 2;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    overflow: hidden;
 }

 .bbb_bestselling_name a {
     font-size: 14px;
     color: #000000;
     -webkit-transition: all 200ms ease;
     -moz-transition: all 200ms ease;
     -ms-transition: all 200ms ease;
     -o-transition: all 200ms ease;
     transition: all 200ms ease
 }

 .bbb_bestselling_name a:hover {
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

 .bbb_bestselling_item.discount .item_discount {
     display: inline-block
 }

 .bbb_bestselling_item.is_new .item_new {
     display: inline-block
 }

 .pav-categoryproducts{
    display: none !important;
 }

 .container-fluid{
    padding-right: 15px;
    padding-left: 15px;
 }

 .bbb_main_container_middle{

    background-color: #fff;
    padding: 11px;
    margin-right: -5px;
    margin-left: -5px;
    /* width: 100%; */
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    border: solid 1px #e8e8e8;
    border-radius: 5px;
    margin-bottom: 9px;
}

 .bbb_deals_item_price_a{
    color: #F44336 !important;
 }

 .img-center{
    margin-left: auto;
    margin-right: auto;
 }


   </style>


<div class="container-fluid" style="margin-bottom:-22px; ">
  <div class="row"><?php if( $SPAN[0] ): ?>
            <aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
                <?php echo $column_left; ?>
            </aside>
        <?php endif; ?>

   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
   </section>
<?php if( $SPAN[2] ): ?>
    <aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">
        <?php echo $column_right; ?>
    </aside>
<?php endif; ?></div>
</div>


<div class="container-fluid m-b-20 shipping-container">



<div class="row">

    <div class="col-md-3">
        <a href="shipping-policy">
        <div class="char_item">

            <div class="row">

                <div class="col-md-4">

                    <div class="char_icon"><img alt="rentopc.com" class="lazy" src="https://i.imgur.com/pr8LtHS.jpg"  data-src="https://i.imgur.com/DjsJsbB.png" width="64" height="64">

                    </div>

                </div>

                <div class="col-md-8">

                    <div class="char_content">
                <div class="char_title">Free Delivery</div>
                    <div class="char_subtitle">Get free delivery all over India</div>
                    </div>

                </div>

            </div>
            </a>



        </div>

    </div>

    <div class="col-md-3">
        <a href="reward-points">

        <div class="char_item">

            <div class="row">

                <div class="col-md-4">

                    <div class="char_icon"><img class="lazy" src="https://i.imgur.com/pr8LtHS.jpg" alt="Rentopc.com" data-src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574781419/medal.png" width="64" height="64" >

                    </div>

                </div>

                <div class="col-md-8">

                    <div class="char_content">
                <div class="char_title">Credits</div>
                    <div class="char_subtitle">Get credits on every purchase</div>
            </div>

                </div>

            </div>



        </div>

        </a>


    </div>


    <div class="col-md-3">

        <a href="/replacement-policy">

        <div class="char_item">

            <div class="row">

                <div class="col-md-4">

                    <div class="char_icon">
                      <img class="lazy" src="https://i.imgur.com/pr8LtHS.jpg" alt="Rentopc.com" data-src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574781489/replace.png" width="64" height="64">

                    </div>

                </div>

                <div class="col-md-8">

                    <div class="char_content">
                <div class="char_title">Easy Replacement</div>
                    <div class="char_subtitle">Hassle free easy replacements</div>
            </div>

                </div>

            </div>



        </div>

    </a>


    </div>


    <div class="col-md-3">

       <a href="easy-cod-emi">

        <div class="char_item">

            <div class="row">

                <div class="col-md-4">

                    <div class="char_icon">

                      <img class="lazy" src="https://i.imgur.com/pr8LtHS.jpg" alt="Rentopc.com" data-src="https://res.cloudinary.com/dxfq3iotg/image/upload/v1574781588/get-cash.png" width="64" height="64">

                    </div>

                </div>

                <div class="col-md-8">

                    <div class="char_content">
                <div class="char_title">Easy Cod & Emi</div>
                    <div class="char_subtitle">Free cod and low cost emi's</div>
            </div>

                </div>

            </div>



        </div>
        </a>


    </div>



</div>

</div>


<!--Best selling products-->

<div class="container-fluid m-b-20">
         <div class="row">
            <div class="col-md-3">
                 <a href="<?php echo $banner_1[0]['banner_url']; ?>">

                 <img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_1[0]['image_url']; ?>" alt="Banner Rentopc 1" class="bsp_big-image lazy" style="width:100%;height: 359px;">

                </a>
            </div>
            <div class="col-md-9" style="margin-left: -7px;">
<div class="bbb_bestselling">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
               <div class="bbb_main_container_top">
                <div class="bbb_bestselling_title_container">
                    <h3 class="bbb_bestselling_title">Best selling products</h3>
                    <div class="bbb_bestselling_nav_container">
                        <a href="https://www.rentopc.com/offers/best-selling-laptops"><h5>View All <i class="fa fa-arrow-right"></i></h5></a>
                    </div>
                </div>
                <div class="bbb_bestselling_slider_container">
                    <div class="owl-carousel owl-theme bbb_bestselling_slider_selling">

                      <?php

                        foreach($best_selling as $results){

                       ?>
                        <div class="owl-item">
                            <div class="bbb_bestselling_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_bestselling_image"><a href="<?php echo $results['href'] ?>"><img class="lazy" src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $results['thumb'] ?>" alt="<?php echo $results['name'] ?>"></a></div>
                                <div class="bbb_bestselling_content text-center">
                                    <div class="bbb_bestselling_price"><?php echo $results['price'] ?></div>
                                    <div class="bbb_bestselling_name"><a href="<?php echo $results['href'] ?>"><?php echo $results['name'] ?></a></div>
                                </div>

                            </div>
                        </div>

                        <?php

                      }

                         ?>

                    </div>
                </div>
               </div>
            </div>
        </div>
    </div>
</div>

            </div>
         </div>
      </div>








<!--Banner bottom-->

<div class="container-fluid" style="margin-top: -8px;">
    <div class="row">
      <div class="col-md-4 col-sm-4">
        <div class="card">
          <div class="card-body">
             <a href="<?php echo $banner_2[0]['banner_url']; ?>">
              <img  alt="rentopc.com" src="https://i.imgur.com/pr8LtHS.jpg"  data-src="<?php echo $banner_2[0]['image_url']; ?>" class="img-responsive image-decoration lazy" style="width: 100%;height:228px;">

            </a>
          </div>
        </div>
      </div>

      <div class="col-md-4 col-sm-4">
        <div class="card">
          <div class="card-body">
             <a href="<?php echo $banner_3[0]['banner_url']; ?>">
              <img alt="rentopc.com" src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_3[0]['image_url']; ?>" class="img-responsive image-decoration lazy" style="width: 100%;height:228px;">

            </a>
          </div>
        </div>
      </div>

      <div class="col-md-4 col-sm-4">
        <div class="card">
          <div class="card-body">
             <a href="<?php echo $banner_4[0]['banner_url']; ?>">
              <img alt="rentopc.com" src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_4[0]['image_url']; ?>" class="img-responsive image-decoration lazy" style="width: 100%;height:228px;">

            </a>
          </div>
        </div>
      </div>
    </div>
</div>




<!-- Best Corporate laptops -->


<div class="container-fluid m-b-20">
         <div class="row">
            <div class="col-md-9">
<div class="bbb_bestselling">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
               <div class="bbb_main_container_middle">
                <div class="bbb_bestselling_title_container">
                    <h3 class="bbb_bestselling_title"><a href="https://www.rentopc.com/offers/best-corporate-laptops">Best Corporate Laptops</a></h3>
                    <div class="bbb_bestselling_nav_container">
                        <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                            <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>                    </div>
                </div>
                <div class="bbb_bestselling_slider_container">
                    <div class="owl-carousel owl-theme bbb_bestselling_slider">


                      <?php

                        foreach($best_corporate as $results){

                       ?>
                        <div class="owl-item">
                            <div class="bbb_bestselling_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_bestselling_image"><a href="<?php echo $results['href'] ?>"><img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $results['thumb'] ?>" class="lazy" alt="rentopc.com"></a></div>
                                <div class="bbb_bestselling_content text-center">
                                    <div class="bbb_bestselling_price"><?php echo $results['price'] ?></div>
                                    <div class="bbb_bestselling_name"><a href="<?php echo $results['href'] ?>"><?php echo $results['name'] ?></a></div>
                                </div>

                            </div>
                        </div>

                        <?php

                      }

                         ?>

                    </div>
                </div>
               </div>
            </div>
        </div>
    </div>
</div>

            </div>
            <div class="col-md-3">
                 <a href="<?php echo $banner_5[0]['banner_url']; ?>">
                <img  src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_5[0]['image_url']; ?>" alt="rentopc.com" class="bsp_big-image lazy" style="    width: 100%;
     height: 359px;">
                </a>
            </div>

         </div>
      </div>

      <!--EMi Banner-->

       <div class="container-fluid m-b-20">

        <div class="row">

            <div class="col-md-12">
                 <a href="<?php echo $banner_6[0]['banner_url']; ?>">
                <img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_6[0]['image_url']; ?>" alt="rentopc.com" class="img-responsive image-decoration lazy" style="width: 100%;height:191px;">
                </a>

            </div>

        </div>

       </div>


      <!--Emi Banner-->


<!-- Deals of the week discount ribbon-->


<div class="container-fluid mydiv m-b-20">
    <div class="row row-underline">
        <div class="col-md-6">

            <span class="pull-left deal-text">Deals of the week</span>


        </div>

        <div class="col-md-6">
            <a href="https://www.rentopc.com/offers/deals-of-the-week">
            <span class="pull-right view-all">View all <i class="fa fa-arrow-right"></i></span>
            </a>

        </div>


    </div>
    <div class="row">
        <div class="col-md-4">
            <!-- bbb_deals -->
            <div class="bbb_deals">
                <!-- <div class="ribbon ribbon-top-right"><span>30% OFF</span></div> -->
                <div class="bbb_deals_title text-center">Today's Best Offer</div>
                <div class="bbb_deals_slider_container">
                    <div class=" bbb_deals_item">
                        <div class="bbb_deals_image"><a href="<?php echo $today_offer_1[0]['href']; ?>"><img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $today_offer_1[0]['thumb']; ?>" alt="rentopc.com" class="lazy" style="height: auto !important;"></a></div>
                        <div class="bbb_deals_content">

                            <div class="row">

                                <div class="col-md-4">

                                    <div class="bbb_deals_item_category"><a href="#">Laptops</a></div>

                                </div>

                                <div class="col-md-8">

                                    <div class="bbb_deals_item_price_a pull-right">Instant discount <?php echo $today_offer_points_1; ?> points</div>

                                </div>

                            </div>

                            <div class="row m-t-12">

                                <div class="col-md-8">

                                    <div class="bbb_deals_item_name"><a href="<?php echo $today_offer_1[0]['href']; ?>"><div class="bbb_bestselling_name" style="font-size: 16px;">
<?php echo $today_offer_1[0]['name']; ?>
                                    </div></a></div>

                                </div>

                                <div class="col-md-4">

                                    <div class="bbb_deals_item_price pull-right" style="margin-top: 17px;"><?php echo $today_offer_1[0]['price']; ?></div>

                                </div>

                            </div>



                            <div class="bbb_deals_info_line d-flex flex-row justify-content-start">

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <!-- bbb_deals -->
            <div class="bbb_deals">
                <!-- <div class="ribbon ribbon-top-right"><span>30% OFF</span></div> -->
                <div class="bbb_deals_title text-center">Today's Best Offer</div>
                <div class="bbb_deals_slider_container">
                    <div class=" bbb_deals_item">
                        <div class="bbb_deals_image"><a href="<?php echo $today_offer_2[0]['href']; ?>"><img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $today_offer_2[0]['thumb']; ?>" class="lazy" alt="rentopc.com" style="height: auto !important;"></a></div>
                        <div class="bbb_deals_content">

                            <div class="row">

                                <div class="col-md-4">

                                    <div class="bbb_deals_item_category"><a href="#">Laptops</a></div>

                                </div>

                                <div class="col-md-8">

                                    <div class="bbb_deals_item_price_a pull-right">Instant discount <?php echo $today_offer_points_2; ?> points</div>

                                </div>

                            </div>

                            <div class="row m-t-12">

                                <div class="col-md-8">

                                    <div class="bbb_deals_item_name"><a href="<?php echo $today_offer_2[0]['href']; ?>"><div class="bbb_bestselling_name" style="font-size: 16px;">
<?php echo $today_offer_2[0]['name']; ?>
                                    </div></a></div>

                                </div>

                                <div class="col-md-4">

                                    <div class="bbb_deals_item_price pull-right" style="margin-top: 17px;"><?php echo $today_offer_2[0]['price']; ?></div>

                                </div>

                            </div>



                            <div class="bbb_deals_info_line d-flex flex-row justify-content-start">

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <!-- bbb_deals -->
            <div class="bbb_deals">
                <!-- <div class="ribbon ribbon-top-right"><span>30% OFF</span></div> -->
                <div class="bbb_deals_title text-center">Today's Best Offer</div>
                <div class="bbb_deals_slider_container">
                    <div class=" bbb_deals_item">
                        <div class="bbb_deals_image"><a href="<?php echo $today_offer_3[0]['href']; ?>"><img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $today_offer_3[0]['thumb']; ?>" class="lazy" alt="rentopc.com" style="height: auto !important;"></a></div>
                        <div class="bbb_deals_content">

                            <div class="row">

                                <div class="col-md-4">

                                    <div class="bbb_deals_item_category"><a href="#">Laptops</a></div>

                                </div>

                                <div class="col-md-8">

                                    <div class="bbb_deals_item_price_a pull-right">Instant discount <?php echo $today_offer_points_3; ?> points</div>

                                </div>

                            </div>

                            <div class="row m-t-12">

                                <div class="col-md-8">

                                    <div class="bbb_deals_item_name"><a href="<?php echo $today_offer_3[0]['href']; ?>"><div class="bbb_bestselling_name" style="font-size: 16px;">
<?php echo $today_offer_3[0]['name']; ?>
                                    </div></a></div>

                                </div>

                                <div class="col-md-4">

                                    <div class="bbb_deals_item_price pull-right" style="margin-top: 17px;"><?php echo $today_offer_3[0]['price']; ?></div>

                                </div>

                            </div>



                            <div class="bbb_deals_info_line d-flex flex-row justify-content-start">

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>



<!--Warranty Banner-->


<div class="container-fluid m-b-20">

        <div class="row">

            <div class="col-md-12">
                <a href="/warranty">
                <img src="https://i.imgur.com/pr8LtHS.jpg" data-src="https://i.imgur.com/aNQKRNe.png" class="img-responsive image-decoration lazy" alt="rentopc.com" style="width: 100%;height:133px;">
                </a>

            </div>

        </div>

       </div>




       <div class="container-fluid text-center">

         <div class="row">

           <div class="col-md-12">
             <script type="text/javascript" language="javascript">
               var aax_size='728x90';
               var aax_pubname = 'rentopc-21';
               var aax_src='302';
             </script>
     <script type="text/javascript" language="javascript" src="http://c.amazon-adsystem.com/aax2/assoc.js"></script>
           </div>


         </div>

       </div>










<!--Discounts upto 80%-->

<div class="bbb_bestselling">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
               <div class="bbb_main_container">
                <div class="bbb_bestselling_title_container">
                    <h3 class="bbb_bestselling_title"><a href="https://www.rentopc.com/offers/best-priced-laptops">BEST PRICED LAPTOPS</a></h3>
                    <div class="bbb_bestselling_nav_container">
                        <div class="bbb_viewed_nav bbb_bestdiscount_prev"><i class="fas fa-chevron-left"></i></div>
                            <div class="bbb_viewed_nav bbb_bestdiscount_next"><i class="fas fa-chevron-right"></i></div>
                    </div>
                </div>
                <div class="bbb_bestselling_slider_container">
                    <div class="owl-carousel owl-theme bbb_bestdiscount_slider">

                      <?php

                        foreach($best_priced as $results){

                       ?>
                        <div class="owl-item">
                            <div class="bbb_bestselling_item discount d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="bbb_bestselling_image"><a href="<?php echo $results['href']; ?>"><img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $results['thumb']; ?>" alt="rentopc.com" class="lazy"></a></div>
                                <div class="bbb_bestselling_content text-center">
                                    <div class="bbb_bestselling_price"><?php echo $results['price']; ?></div>
                                    <div class="bbb_bestselling_name"><a href="<?php echo $results['href']; ?>"><?php echo $results['name']; ?></a></div>
                                </div>

                            </div>
                        </div>

                        <?php

                        }

                         ?>
                    </div>
                </div>
               </div>
            </div>
        </div>
    </div>
</div>

<!-- <div class="container-fluid">



</div> -->






<div class="container-fluid m-t-20">
    <div class="row">
        <div class="col-md-4 col-sm-4">
            <div class="card">
                <div class="card-body">
                      <a href="<?php echo $banner_7[0]['banner_url']; ?>">
                    <img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_7[0]['image_url']; ?>" alt="rentopc.com" class="img-responsive image-decoration lazy" style="width: 100%;height:228px;">
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-4">
            <div class="card">
                <div class="card-body">
                     <a href="<?php echo $banner_8[0]['banner_url']; ?>">
                    <img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_8[0]['image_url']; ?>" alt="rentopc.com" class="img-responsive image-decoration lazy" style="width: 100%;height:228px;">
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-4">
            <div class="card">
                <div class="card-body">
                   <a href="<?php echo $banner_9[0]['banner_url']; ?>">
                    <img src="https://i.imgur.com/pr8LtHS.jpg" data-src="<?php echo $banner_9[0]['image_url']; ?>" class="img-responsive image-decoration lazy" style="width: 100%;height:228px;">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid mb-3" style="margin-bottom: 3px !important;">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                     <a href="<?php echo $banner_10[0]['banner_url']; ?>">
                    <img src="<?php echo $banner_10[0]['image_url']; ?>" alt="rentopc.com" class="img-responsive image-decoration lazy-load-image" style="width: 100%">
                    </a>
                </div>
            </div>
        </div>


    </div>

</div>

<script type="text/javascript">


   $(document).ready(function()
{


        if($('.bbb_slider').length)
        {
            var trendsSlider = $('.bbb_slider');
            trendsSlider.owlCarousel(
            {

                loop:false,
                margin:10,
                nav:false,
                dots:false,
                autoplayHoverPause:true,
                autoplay:true,
                responsive:
                {
                    0:{items:1},
                    575:{items:2},
                    991:{items:3},
                    1371:{items:4}
                }
            });

            trendsSlider.on('click', '.bbb_fav', function (ev)
            {
                $(ev.target).toggleClass('active');
            });

            if($('.bbb_prev').length)
            {
                var prev = $('.bbb_prev');
                prev.on('click', function()
                {
                    trendsSlider.trigger('prev.owl.carousel');
                });
            }

            if($('.bbb_next').length)
            {
                var next = $('.bbb_next');
                next.on('click', function()
                {
                    trendsSlider.trigger('next.owl.carousel');
                });
            }
        }


    });












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






       $(document).ready(function(){

         if($('.bbb_deals_slider').length)
         {
             var bbb_dealsSlider = $('.bbb_deals_slider');
             bbb_dealsSlider.owlCarousel(
             {
                 items:1,
                 loop:false,
                 navClass:['bbb_deals_slider_prev', 'bbb_deals_slider_next'],
                 nav:false,
                 dots:false,
                 smartSpeed:1200,
                 margin:30,
                 autoplay:true,
                 autoplayTimeout:5000
             });

             if($('.bbb_deals_slider_prev').length)
             {
                 var prev = $('.bbb_deals_slider_prev');
                 prev.on('click', function()
                 {
                     bbb_dealsSlider.trigger('prev.owl.carousel');
                 });
             }

             if($('.bbb_deals_slider_next').length)
             {
                 var next = $('.bbb_deals_slider_next');
                 next.on('click', function()
                 {
                     bbb_dealsSlider.trigger('next.owl.carousel');
                 });
             }
         }





         if($('.bbb_deals_timer_box').length)
         {
             var timers = $('.bbb_deals_timer_box');
             timers.each(function()
             {
                 var timer = $(this);

                 var targetTime;
                 var target_date;

                 // Add a date to data-target-time of the .bbb_deals_timer_box
                 // Format: "Feb 17, 2018"
                 if(timer.data('target-time') !== "")
                 {
                     targetTime = timer.data('target-time');
                     target_date = new Date(targetTime).getTime();
                 }
                 else
                 {
                     var date = new Date();
                     date.setDate(date.getDate() + 2);
                     target_date = date.getTime();
                 }

                 // variables for time units
                 var days, hours, minutes, seconds;

                 var h = timer.find('.bbb_deals_timer_hr');
                 var m = timer.find('.bbb_deals_timer_min');
                 var s = timer.find('.bbb_deals_timer_sec');

                 setInterval(function ()
                 {
                     // find the amount of "seconds" between now and target
                     var current_date = new Date().getTime();
                     var seconds_left = (target_date - current_date) / 1000;
                     console.log(seconds_left);

                     // do some time calculations
                     days = parseInt(seconds_left / 86400);
                     seconds_left = seconds_left % 86400;

                     hours = parseInt(seconds_left / 3600);
                     hours = hours + days * 24;
                     seconds_left = seconds_left % 3600;


                     minutes = parseInt(seconds_left / 60);
                     seconds = parseInt(seconds_left % 60);

                     if(hours.toString().length < 2)
                     {
                         hours = "0" + hours;
                     }
                     if(minutes.toString().length < 2)
                     {
                         minutes = "0" + minutes;
                     }
                     if(seconds.toString().length < 2)
                     {
                         seconds = "0" + seconds;
                     }

                     // display results
                     h.text(hours);
                     m.text(minutes);
                     s.text(seconds);

                 }, 1000);
             });
         }

         });








        $(document).ready(function()
{


        if($('.bbb_bestselling_slider').length)
        {
            var viewedSlider = $('.bbb_bestselling_slider');

             viewedSlider.owlCarousel(
            {
                loop:true,
                margin:30,
                autoplay:true,
                autoplayTimeout:4000,
                nav:false,
                dots:false,
                responsive:
                {
                     0:{items:1},
                    575:{items:2},
                    768:{items:3},
                    991:{items:3},
                    1270:{items:4},
                    1570:{items:5}

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




        $(document).ready(function()
{


        if($('.bbb_bestselling_slider_selling').length)
        {
            var viewedSlider = $('.bbb_bestselling_slider_selling');

             viewedSlider.owlCarousel(
            {
                loop:true,
                margin:30,
                autoplay:true,
                autoplayTimeout:4000,
                nav:false,
                dots:false,
                responsive:
                {
                    0:{items:1},
                    575:{items:2},
                    768:{items:3},
                    991:{items:3},
                    1270:{items:4},
                    1570:{items:5}

                }
            });



            // if($('.bbb_viewed_prev').length)
            // {
            //     var prev = $('.bbb_viewed_prev');
            //     prev.on('click', function()
            //     {
            //         viewedSlider.trigger('prev.owl.carousel');
            //     });
            // }

            // if($('.bbb_viewed_next').length)
            // {
            //     var next = $('.bbb_viewed_next');
            //     next.on('click', function()
            //     {
            //         viewedSlider.trigger('next.owl.carousel');
            //     });
            // }
        }


    });












        $(document).ready(function()
{


        if($('.bbb_bestdiscount_slider').length)
        {
            var viewedSlider = $('.bbb_bestdiscount_slider');

            viewedSlider.owlCarousel(
            {
                loop:true,
                margin:30,
                autoplay:true,
                autoplayTimeout:5000,
                nav:false,
                dots:false,
                responsive:
                {
                    0:{items:1},
                    575:{items:2},
                    768:{items:3},
                    991:{items:4},
                    1199:{items:5}

                }
            });

            if($('.bbb_bestdiscount_prev').length)
            {
                var prev = $('.bbb_bestdiscount_next');
                prev.on('click', function()
                {
                    viewedSlider.trigger('prev.owl.carousel');
                });
            }

            if($('.bbb_bestdiscount_next').length)
            {
                var next = $('.bbb_bestdiscount_prev');
                next.on('click', function()
                {
                    viewedSlider.trigger('next.owl.carousel');
                });
            }
        }


    });



</script>






<?php echo $footer; ?>
