<h3 class="title-filter">Фильтры</h3>
<div class="panel panel-default">
  <div class="list-group">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <p class="list-items-glav"><?php echo $filter_group['name']; ?></p>
    <div class="list-group-item">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <?php echo $filter['name']; ?>
            <?php } else { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <?php echo $filter['name']; ?>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primaryy">Подобрать</button>
    <button type="button" id="button-filterr" class="btn-primaryy btns" ><img  src="../upload/catalog/view/theme/doll/image/123.png" <p>Сбросить</p></button>
  </div>
</div>
<script type="text/javascript">
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>

<script type="text/javascript">
  $('#button-filterr').on('click', function() {
    filter = [];


    location = '<?php echo $action; ?>&filter=' + filter.join(',');
  });
  //--></script>


