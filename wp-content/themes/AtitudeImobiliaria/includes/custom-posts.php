<?php

/* PRODUTOS ***********************************/

add_action('init', 'type_post_produtos');
function type_post_produtos() { 
    $labels = array(
        'name' => _x('Produtos', 'post type general name'),
        'singular_name' => _x('Produto', 'post type singular name'),
        'add_new' => _x('Adicionar Produto', 'Novo Produto'),
        'add_new_item' => __('Novo Produto'),
        'edit_item' => __('Editar Produto'),
        'new_item' => __('Novo Produto'),
        'view_item' => __('Ver Produto'),
        'search_items' => __('Procurar Produtos'),
        'not_found' =>  __('Nenhum produto encontrado'),
        'not_found_in_trash' => __('Nenhum produto encontrado na lixeira'),
        'parent_item_colon' => '',
        'menu_name' => 'Produtos'
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'public_queryable' => true,
        'show_ui' => true,			
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'has_archive' => false,
        'hierarchical' => false,
        'menu_position' => 7,	
        'menu_icon' => 'dashicons-cart',
        'supports' => array('title')
      );

    register_post_type( 'produtos' , $args );
    flush_rewrite_rules();
}

?>