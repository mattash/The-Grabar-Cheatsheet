$(window).scroll =>
	menu: $("#TOC")
	content: $("#content")
	st: $(document).scrollTop()
	contentTop: content.offset().top
	scrollTop: if st >= contentTop then st - contentTop else st
		
	move: (offset) -> menu.animate({top:offset+"px"},{duration:500,queue:false})
	
	if scrollTop+menu.outerHeight() < content.innerHeight()
		move(scrollTop)
	else
		adjustedScrollTop: scrollTop-(scrollTop+menu.outerHeight()-content.innerHeight())
		move(adjustedScrollTop)