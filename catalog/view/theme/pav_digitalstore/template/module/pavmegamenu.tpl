<style>

.navbar-collapse.collapse.in {
  display: block!important;
}

.navbar-default {
    background-color: #ffffff !important;
    border-color: #e7e7e7;
}


#pav-mainnav .navbar ul.nav > li > a {

    pointer-events: none;
}


#pav-mainnav .dropdown:hover > .dropdown-menu {
    display: block;
    width: 100%;
}

.dropdown-menu {

    position: absolute !important;

    }


      @media (max-width: 768px){
.dropdown-menu {

         position: inherit !important;

        }
}


.mb-input{
         margin-top: 9px;
    margin-left: 10px;
}

.search-sm-button{
  width: 0% !important;
}

    .sm-input-search{
    border-radius: 0px;
        height: 35px;
    padding: 5px 12px;
    }

 .button-search{
     color: #fff;
    background: #2874ef;
    border-color: #2874ef;
 }

</style>




<div class="pav-megamenu">
	<nav class="navbar navbar-default">

          <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>



              <div class="d-md-none my-2 hidden-md hidden-lg" id="search" style="position: initial !important;">


                  <div class="input-group mb-input">


                    <input type="text" name="sm-search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="sm-input-search form-control" />
                    <div class="input-group-btn search-sm-button"> <button type="button" class="btn btn-secondary button-search" id="mobile-search-sm"> <i class="fa fa-search"></i> </button> </div>

                  </div>


            </div>




          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
              <?php echo $treemenu; ?>
          </div>

  </nav>
</div>


<script>


/*Search Mobile*/

   $("#mobile-search-sm").click( function()
           {
             url = $('base').attr('href') + 'index.php?route=product/search';

    var value = $('input[name=\'sm-search\']').val();



    if (value) {
      url += '&search=' + encodeURIComponent(value);
    }

    location = url;

           });

</script>
