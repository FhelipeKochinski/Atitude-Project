<?php $images = get_field('conteudo_galeria'); ?>

<?php if($images): ?>
    <?php foreach($images as $image): ?>
        <div class="col-sm-2">
            <a href="<?php echo $image['sizes']['2048x2048'];?>" data-fancybox="imagens">
                <img src="<?php echo $image['sizes']['post'];?>">
            </a>
        </div>
    <?php endforeach;?>
<?php endif;?>