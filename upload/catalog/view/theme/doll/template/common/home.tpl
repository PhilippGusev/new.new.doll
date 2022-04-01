<?php echo $header; ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <div class="container">
            <div id="home__block--img">
                <h1 id="home-title">
                    New Collection
                </h1>
                <p id="home-text">название коллекции - февраль ‘22</p>
                <button class="home-button">
                    перейти в магазин
                </button>
            </div>
            <?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>