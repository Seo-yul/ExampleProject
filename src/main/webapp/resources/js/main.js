(function($) {
	"use strict";
	var input_signup = $('.validates-input .input100');
	$("#signUp-btn").click(function() {
		var check_signup = true;
		$(".signUp-form").attr("action", "signUp")
		$(".signUp-form").attr("method","POST")
			for (var i = 0; i < input_signup.length; i++) {
				if (validate(input_signup[i]) == false) {
					showValidate(input_signup[i]);
					check_signup = false;
					
				}
			}
			if(check_signup)
			$(".signUp-form").submit()
	});

	/*
	 * ================================================================== [
	 * Validate ]
	 */
	var input = $('.validate-input .input100');
	$('.validate-form').on('submit', function() {
		var check = true;

		for (var i = 0; i < input.length; i++) {
			if (validate(input[i]) == false) {
				showValidate(input[i]);
				check = false;
			}
		}
		
		return check;
	});

	$('.validates-form .input100').each(function() {
		$(this).focus(function() {
			hideValidate(this);
		});
	});

	$('.validate-form .input100').each(function() {
		$(this).focus(function() {
			hideValidate(this);
		});
	});

	function validate(input) {
		if ($(input).attr('type') == 'text'
				|| $(input).attr('name') == 'ID') {
			if ($(input)
					.val()
					.trim()
					.match(
							/^([a-zA-Z0-9_\-\.]+)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
///^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
				return false;
			}
		} else {
			if ($(input).val().trim() == '') {
				return false;
			}
		}
		
	}

	function showValidate(input) {
		var thisAlert = $(input).parent();

		$(thisAlert).addClass('alert-validate');
	}

	function hideValidate(input) {
		var thisAlert = $(input).parent();

		$(thisAlert).removeClass('alert-validate');
	}

})(jQuery);