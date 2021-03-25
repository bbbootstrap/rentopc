<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-module" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid"><?php if (!empty($error_warning)) { ?>
    <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $form_action; ?>" method="post" enctype="multipart/form-data" id="form-module" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-code"><?php echo $entry_code; ?></label>
            <div class="col-sm-10">
              <input class="form-control" id="input-code" type="text" name="code" value="<?php echo $code; ?>" placeholder="module_emailtemplate" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-cycle"><?php echo $entry_cycle; ?></label>
            <div class="col-sm-10">
              <select name="cycle" id="input-cycle" class="form-control">
                <option value="hour"<?php echo $cycle == 'hour' ? ' selected="selected"' : ''; ?>><?php echo $text_hour; ?></option>
                <option value="day"<?php echo $cycle == 'day' ? ' selected="selected"' : ''; ?>><?php echo $text_day; ?></option>
                <option value="week"<?php echo $cycle == 'week' ? ' selected="selected"' : ''; ?>><?php echo $text_week; ?></option>
                <option value="month"<?php echo $cycle == 'month' ? ' selected="selected"' : ''; ?>><?php echo $text_month; ?></option>
                <option value="year"<?php echo $cycle == 'year' ? ' selected="selected"' : ''; ?>><?php echo $text_year; ?></option>
              </select>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-action"><?php echo $entry_action; ?></label>
            <div class="col-sm-10">
              <input class="form-control" id="input-action" type="text" name="action" value="<?php echo $action; ?>" placeholder="extension/module/emailtemplate/cron" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-default danger <?php echo $status == 0 ? ' active' : ''; ?>" data-toggle="tooltip" title="<?php echo $text_disabled; ?>">
                  <input type="radio" name="status" value="0" <?php echo $status == 0 ? ' checked="checked" ' : ''; ?>/><i class="fa fa-fw fa-times"></i>
                </label>
                <label class="btn btn-default success <?php echo $status == 1 ? ' active' : ''; ?>" data-toggle="tooltip" title="<?php echo $text_enabled; ?>">
                  <input type="radio" name="status" value="1" <?php echo $status == 1 ? ' checked="checked" ' : ''; ?>/><i class="fa fa-fw fa-check"></i>
                </label>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
