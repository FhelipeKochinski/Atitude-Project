<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="author" content="Mix Web Soluções">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="all" />
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link rel="icon" href="<?php echo esc_url( home_url( '/' ) ); ?>favicon.ico" type="image/x-icon"/>
	<link rel='stylesheet' href="<?php echo get_template_directory_uri(); ?>/css/header.css"/>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">
	<?php wp_head(); ?>

</head>

<body> 
		
	<!-- Início Header -->
	<header id="header">

		<!-- Top Header -->
		<div class="topHeader">
			<div class="container">

				<!-- Logo -->
				<figure id="logo">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
						<?php getImagemObj(get_field('logo', 'option')['sizes'], '2048x2048', 'Atitude Imóveis') ?>
					</a>
				</figure>
				<!-- /Logo -->

				<!-- WhatsApp -->
				<?php if (get_field('whatsapp', 'options')) { ?>
					<div class="linkHeader whatsappHeader">
						<div class="texto">
							<i class="fa fa-whatsapp"></i>
							<a href="https://api.whatsapp.com/send?phone=55<?= linkTelefone(get_field('whatsapp', 'options')) ?>" id="whatsappHeader">
								Falar c/ Corretor
							</a>
						</div>
					</div>
				<?php } ?>
				<!-- /WhatsApp -->

			</div>
		</div>
		<!-- /Top Header -->
		
	</header>
	<!-- /Fim Header -->