name: "#TOC"
menuYloc: parseInt($(name).css("top").substring(0,$(name).css("top").indexOf("px")))
$(window).scroll =>
	st: $(document).scrollTop()
	scrolltop: if st >= 77 then st - 77 else st
	offset: menuYloc+scrolltop+"px"
	$(name).animate({top:offset},{duration:500,queue:false})