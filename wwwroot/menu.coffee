name: "#TOC"
menuYloc: null

$(document).ready ->
	menuYloc = parseInt($(name).css("top").substring(0,$(name).css("top").indexOf("px")))
	$(window).scroll =>
		offset: menuYloc+$(document).scrollTop()+"px"
		$(name).animate({top:offset},{duration:500,queue:false})