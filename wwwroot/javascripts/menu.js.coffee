$(window).scroll =>
	menu = $("#TOC")
	cont = $("#content")
	st = $(document).scrollTop()
	contentTop = cont.offset().top
	scrollTop = if st >= contentTop then st - contentTop else st
		
	move = (offset) -> menu.animate({top:offset+"px"},{duration:500,queue:false})
	
	if scrollTop+menu.outerHeight() < cont.innerHeight()
		move(scrollTop)
	else
		adjustedScrollTop: scrollTop-(scrollTop+menu.outerHeight()-cont.innerHeight())
		move(adjustedScrollTop)
