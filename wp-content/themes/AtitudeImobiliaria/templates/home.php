<?php
/**
 * Template Name: Home
 */
?>

<?php get_header() ?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/home.css">

<section id="paginaInicial">

	<!-- Conteúdo 1 -->
	<div class="conteudo_inicial">

		<!-- Imagem Desktop -->
		<figure class="bannerDesktop">
			<?php getImagemObj(get_field('imagem_desktop')['sizes'], '2048x2048') ?>
		</figure>
		
		<!-- Interno - Conteúdo -->
		<div class="col-sm-6 texto">

			<!-- Título Principal -->
			<?php tituloPrincipal(get_field('titulo_inicio'), 'h1') ?>

			<!-- Texto -->
			<div class="textoBox">
				<?= get_field('texto_inicio') ?>
			</div>

		</div>

	</div>
	<!-- /Conteúdo 1 -->

	<!-- Conteúdo 2 -->
	<div class="conteudo_foto">
		
		<!-- Imagem -->
		<figure class="col-sm-9">
			<?php getImagemObj(get_field('imagem_segunda')['sizes'], '2048x2048') ?>
		</figure>

	</div>
	<!-- /Conteúdo -->
	
	<!-- Conteúdo 3 -->
	<div class="conteudo_colunas">
		<div class="container">

			<!-- Interno - Coluna 1 -->
			<div class="col-sm-4 texto">

				<!-- Título -->
				<i class="fa fa-map-marker" aria-hidden="true"></i>
				<h2><?= get_field('titulo_coluna_um') ?></h2>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_coluna_um') ?>
				</div>

			</div>

			<!-- Interno - Coluna 2 -->
			<div class="col-sm-4 texto">

				<!-- Título -->
				<i class="fa fa-object-ungroup" aria-hidden="true"></i>
				<h2><?= get_field('titulo_coluna_dois') ?></h2>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_coluna_dois') ?>
				</div>

			</div>

			<!-- Interno - Coluna 3 -->
			<div class="col-sm-4 texto">

				<!-- Título -->
				<i class="fa fa-pencil" aria-hidden="true"></i>
				<h2><?= get_field('titulo_coluna_tres') ?></h2>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_coluna_tres') ?>
				</div>

			</div>

		</div>
	</div>
	<!-- /Conteúdo 3 -->

    <!-- Conteúdo 4 -->
    <div class="conteudo_planta">
        <div class="container">

			<!-- Título -->
            <div class="col-sm-12 texto ">

				<!-- Elemento Superior -->
				<div class="superiorBox">
					<span><?= get_field('elemento_superior') ?></span>
				</div>

				<!-- Título Principal -->
				<?php tituloPrincipal(get_field('titulo_planta'), 'h2') ?>

			</div>
			<!-- /Título -->

			<!-- Interno - Pavement -->
			<div class="col-sm-6 texto pavement">

				<!-- Título Principal -->
				<?php tituloPrincipal(get_field('titulo_pavimento'), 'h2') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_pavimento') ?>
				</div>
				
				<!-- Imagem -->
				<figure>
					<?php getImagemObj(get_field('imagem_pavimento')['sizes'], '2048x2048', get_field('titulo_pavimento')) ?>
				</figure>

			</div>
			<!-- /Pavement -->
			
			<!-- Interno - Project -->
			<div class="col-sm-6 texto project">

				<!-- Título Principal -->
				<?php tituloPrincipal(get_field('titulo_projeto'), 'h2') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_projeto') ?>
				</div>
								
				<!-- Imagem -->
				<figure>
					<?php getImagemObj(get_field('imagem_projeto')['sizes'], '2048x2048', get_field('titulo_projeto')) ?>
				</figure>

			</div>
			<!-- /Project -->

        </div>
    </div>
	<!-- /Conteúdo 4 -->

	<!-- Conteúdo 5 -->
	<div class="conteudo_whats">
		<div class="container">

			<!-- Interno - Título -->
			<div class="col-sm-7 texto">

				<!-- Elemento Superior -->
				<div class="superiorBox">
					<span><?= get_field('superior_elemento') ?></span>
				</div>

				<!-- Título Principal -->
				<?php tituloPrincipal(get_field('titulo_whats'), 'h2') ?>

			</div>
			<!-- /Título -->

			<!-- Interno - Texto -->
			<div class="col-sm-5 texto">

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_whats') ?>
				</div>

				<!-- WhatsApp -->
				<?php if (get_field('whatsapp', 'options')) { ?>
					<div class="linkContato whatsappContent">
					
						<div class="texto">
							<i class="fa fa-whatsapp"></i>
							<a href="https://api.whatsapp.com/send?phone=55<?= linkTelefone(get_field('whatsapp', 'options')) ?>" id="whatsappConteudo">
								WhatsApp
							</a>
						</div>
					
					</div>
				<?php } ?>

			</div>
			<!-- /Texto -->

			<!-- Img -->
			<div class="imgWhats">

				<figure class="col-sm-12">
					<?php getImagemObj(get_field('imagem_whats')['sizes'], '2048x2048') ?>
				</figure>

			</div>

		</div>
	</div>
	<!-- /Conteúdo 5 -->
			
	<!-- Conteúdo 6 -->
	<div class="conteudo_galeria">
		<div class="container">

			<!-- Interno - Título -->
			<div class="col-sm-12 texto">

				<!-- Texto -->
				<div class="superiorBox">
					<span><?= get_field('superior_galeria') ?></span>
				</div>

				<!-- Título Principal -->
				<?php tituloPrincipal(get_field('titulo_galeria'), 'h2') ?>

			</div>
			<!-- /Título -->

		</div>

		<!-- Imagem -->
		<div class="col-sm-12 galeriaContent">
		
			
			<?php get_template_part('content','gallery'); ?>

		</div>

	</div>
	<!-- /Conteúdo 6 -->
				
	<!-- Conteúdo 7 -->
	<div class="conteudo_porcentagem">
		<div class="container">

			<!-- Interno - Título -->
			<div class="col-sm-12 texto">

				<!-- Elemento Superior -->
				<div class="superiorBox">
					<span><?= get_field('superior_porcentagem') ?></span>
				</div>

				<!-- Título Principal -->
				<?php tituloPrincipal(get_field('titulo_porcentagem'), 'h2') ?>

			</div>
			<!-- /Título -->

			<!-- Interno - Conteúdo -->
			<div class="col-sm-6">
			
				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_porcentagem') ?>
				</div>

			</div>
			<!-- /Conteúdo -->

			<!-- Interno - Estatística  -->
			<div class="col-sm-6 lista">
				<?php if( have_rows('porcentagem') ): ?>
					<ul>
						<?php while( have_rows('porcentagem') ): the_row(); ?>
							<li>
								<p><?php the_sub_field('conteudo'); ?></p>

								<span><?php the_sub_field('porcentagem_interno'); ?></span>

								<div class="porcentagemInterna" style="width:<?= the_sub_field('porcentagem_interno') ?>"></div>
							</li>
						<?php endwhile; ?>
					</ul>
				<?php endif; ?>
			</div>
			<!-- /Estatística  -->

		</div>
	</div>
	<!-- /Conteúdo 7 -->

	<!-- Mapa -->
	<div class="boxMapa">
		<?= get_field('iframe_do_mapa') ?>
	</div>
	<!-- /Mapa -->

	<!-- Conteúdo 8 -->
	<div class="conteudo_visita">
		<div class="container">

			<!-- Interno - Título -->
			<div class="col-sm-6 texto">

				<!-- Elemento Superior -->
				<div class="superiorBox">
					<span><?= get_field('superior_visita') ?></span>
				</div>

				<!-- Principal Título -->
				<?php tituloPrincipal(get_field('titulo_visita'), 'h2') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_visita') ?>
				</div>

			</div>
			<!-- /Título -->

			<!-- Interno - Dados -->
			<div class="col-sm-6 dadosVisita">

				<!-- Conteúdo -->
				<div class="textoBox">

					<!-- Nome do Corretor -->
					<h3><?= get_field('nome_corretor') ?></h3>

					<!-- Creci -->
					<span class="creci"><?= get_field('creci') ?></span>

					<!-- WhatsApp -->
					<?php if (get_field('whatsapp', 'options')) { ?>
						<div class="linkVisita whatsappVisita">
							<div class="texto">
								<a href="https://api.whatsapp.com/send?phone=55<?= linkTelefone(get_field('whatsapp', 'options')) ?>" id="whatsVisita">
									ENVIAR WHATS
								</a>
							</div>
						</div>
					<?php } ?>

				</div>

			</div>
			<!-- /Dados -->

		</div>
	</div>
	<!-- /Conteúdo 8 -->	
	
	<!-- Borda -->
	<div class="conteudo_borda">
		<div class="container">
			<div class="borda"></div>
		</div>
	</div>
	<!-- /Borda -->	

</section>

<?php get_footer() ?>