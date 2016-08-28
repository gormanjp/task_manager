$(function(){
	$("input.check").on("change", function(){
		$(this).parents("form").trigger("submit")
	})
});