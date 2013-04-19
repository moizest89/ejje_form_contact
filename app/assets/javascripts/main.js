$(document).ready(function(){
	//$('form#new_contact_form').submit(false);
})

function error_validate(vals){
	var form_contact = $('form#new_contact_form')
	var inputs = [];
	inputs.push(vals);
	//console.log(inputs)
	//$('input',"form#new_contact_form").removeClass("error")
	console.dir(inputs)
	for (var i = 0; i < inputs.length; i++) {
		if (i == 0){
			//$("input#contact_form_"+inputs[i],"form#new_contact_form").focus();
		};		
		$("input#contact_form_"+inputs[i],"form#new_contact_form").addClass('error')
	};
}

function wait_form(opc,input){
	console.log(input)
	if (opc == 1){
		$("#"+input).attr('disabled','disabled');
		setTimeout(function() {
			$("#"+input).submit();
		}, 500);
		$("#"+input).val("Espere..")
	};
	if (opc == 2) {
		$("#"+input).removeAttr('disabled');
		$("#"+input).val("Enviar")
	};
}