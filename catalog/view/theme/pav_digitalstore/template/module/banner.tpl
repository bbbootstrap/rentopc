<div id="carousel24" class="owl-carousel owl-theme">

    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <div class="item"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazy-load-image" /></a></div>
    <?php } else { ?>
    <div class="item"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive lazy-load-image" /></div>
    <?php } ?>
    <?php } ?>

</div>

<style>

.owl-dots {
    margin-top: -28px !important;
    position: relative !important;
}

.owl-theme .owl-dots .owl-dot.active span, .owl-theme .owl-dots .owl-dot:hover span {
    background: #5867f6 !important;
}




.owl-prev {
    width: 15px;
    height: 100px;
    position: absolute;
    top: 40%;
    margin-left: -20px;
    display: block !important;
    border:0px solid black;
}

.owl-next {
    width: 15px;
    height: 100px;
    position: absolute;
    top: 40%;
    right: -25px;
    display: block !important;
    border:0px solid black;
}
.owl-prev i, .owl-next i {transform : scale(1,6); color: #ccc;}

</style>

<script>

$(document).ready(function() {

  $("#carousel24").owlCarousel({
      items:1, //how many items you want to display
    loop:true,
    lazyLoad:true,
    margin:10,
    pagination: false,
    autoplay:true,
    autoplayTimeout:5000,
    autoplayHoverPause:true,
    navigation: true,
    navigationText: ["<img src='https://img.icons8.com/flat_round/64/000000/right.png'>","<img src='mynextimage.png'>"]

  });

});

</script>
