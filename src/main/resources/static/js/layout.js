/*
boardSrcript
*/

$(function() {
	$('#signin').on("click", () => {
		$("form[name=sign]").attr('action', "signin")
		$("form[name=sign]").submit();
	});
	
	$(document).ready(function(){
		$('#load').delay('1000').fadeOut();
	});
	
	$('.search__input-button').on('click', function() {
		let text = $('#searchInput-headerSearchDesktop').val();
		$("form[name=search]").attr('action', "search?bucket=1&text="+text)
		$("form[name=search]").submit();
	})
})