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

<div class="text-right" style="margin-bottom:10px;">

<button class="btn btn-out btn-primary btn-square" id="button-filter"><?php echo $button_filter; ?></button>

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

           
            
            

            <input type="checkbox" class="option-input checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" /> <span class="ml-10"><?php echo $filter['name']; ?></span>


            
            <?php } else { ?>
           
             <input type="checkbox" class="option-input checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" /> <span class="ml-10"><?php echo $filter['name']; ?></span>
            <?php } ?>
          </label>
        </div>
        <?php } ?>




      </div>
    </div>
  </div>

  <?php } ?>




</div>

<div class="panel-footer text-right refine">
    

    <button class="btn btn-out btn-primary btn-square" id="button-filter-bottom"><?php echo $button_filter; ?></button>
  </div>


</div>



<script>
$(document).ready(function(){
    

 $('.panel-collapse').on('show.bs.collapse', function () {
    $(this).siblings('.panel-heading').addClass('active');
  });

  $('.panel-collapse').on('hide.bs.collapse', function () {
    $(this).siblings('.panel-heading').removeClass('active');
  });


});


$('#button-filter').on('click', function() {
    filter = [];

    $('input[name^=\'filter\']:checked').each(function(element) {
        filter.push(this.value);
    });

    location = '<?php echo $action; ?>&filter=' + filter.join(',');
});

$('#button-filter-bottom').on('click', function() {
    filter = [];

    $('input[name^=\'filter\']:checked').each(function(element) {
        filter.push(this.value);
    });

    location = '<?php echo $action; ?>&filter=' + filter.join(',');
});

</script>