var Pooptrack = {
	inline_input : function(){
		$("label.inlined + input.input-text").each(function (type) {
			var input = $(this);
			$(window).bind('load', function () {
				setTimeout(function(){
					if (input.val().length > 0) {
			 			input.prev().addClass('has-text');
			 		}
			 	}, 200);
			});
			
			$(this).focus(function () {
				$(this).prev("label.inlined").addClass("focus");
			});
  
			$(this).keypress(function () {
				$(this).prev("label.inlined").addClass("has-text").removeClass("focus");
			});
  
			$(this).blur(function () {
				if($(this).val() == "") {
					$(this).prev("label.inlined").removeClass("has-text").removeClass("focus");
				 }
			});
		});
	}
}