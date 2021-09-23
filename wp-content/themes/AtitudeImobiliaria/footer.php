<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/footer.css">

<!-- Footer -->
<footer id="footer">

	<!-- Container -->
	<div class="container">

		<div class="col-sm-6">

			<!-- Elemento Superior -->
			<div class="superiorBox">
				<span><?= get_field('superior_rodape', 'option') ?></span>
			</div>

			<!-- Logo -->
			<div class="col-sm-12 logo">
				<figure id="logoFooter">
					<?php getImagemObj(get_field('logo_footer', 'option')['sizes'], '2048x2048', 'Atitude Imóveis') ?>
				</figure>
			</div>
			<!-- /Logo -->

			<!-- Texto -->
			<div class="textoBox">
				<p><?= get_field('texto_footer', 'option') ?></p>
			</div>

		</div>

		<!-- Dados Footer -->
		<div class="col-sm-6 dadosFooter">

			<!-- Redes Sociais -->
			<div class="redesSociais">

				<!-- Facebook -->
				<?php if(get_field('facebook', 'option')){ ?>
					<a href="<?php echo get_field('facebook', 'option') ?>" target="_blank">
						<i class="fa fa-facebook-square" aria-hidden="true"></i>
					</a>
				<?php } ?>

				<!-- Instagram -->
				<?php if(get_field('instagram', 'option')){ ?>
					<a href="<?php echo get_field('instagram', 'option') ?>" target="_blank">
						<i class="fa fa-instagram" aria-hidden="true"></i>
					</a>
				<?php } ?>

			</div>
			<!-- /Redes Sociais -->

		</div>
		<!-- /Dados Footer -->

	</div>
	<!-- /Container -->

</footer>
<!-- /Footer -->

<script src="<?php echo get_template_directory_uri()?>/assets/scripts.js"></script>

<?php wp_footer(); ?>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&family=Work+Sans&display=swap" rel="stylesheet">

</body>
</html>
