/*******************************
Funções executadas quando a página fica pronta
********************************/

jQuery(document).ready(function() {

	/* Máscaras */
	if($(".telefone").length > 0){
		$(".telefone").mask("(00) 0000-00009");
	}

	jQuery('.telefone').blur(function(event) {
		if(jQuery(this).val().length == 15){
			jQuery('.telefone').mask('(00) 00000-0009');
		} else {
			jQuery('.telefone').mask('(00) 0000-00009');
		}
	});

})