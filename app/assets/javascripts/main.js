

function error_validate(vals){
	var form_contact = $('form#new_contact_form')
	var inputs = [];
	inputs.push(vals);
	console.log(inputs)
	for (var i = 0; i < inputs.length; i++) {
		$("input#contact_form_"+inputs[i],"form#new_contact_form").addClass('error')
	};
}