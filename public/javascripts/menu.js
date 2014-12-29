(function() {
  $(window).scroll((function(_this) {
    return function() {
      var cont, contentTop, menu, move, scrollTop, st;
      menu = $("#TOC");
      cont = $("#content");
      st = $(document).scrollTop();
      contentTop = cont.offset().top;
      scrollTop = st >= contentTop ? st - contentTop : st;
      move = function(offset) {
        return menu.animate({
          top: offset + "px"
        }, {
          duration: 500,
          queue: false
        });
      };
      if (scrollTop + menu.outerHeight() < cont.innerHeight()) {
        return move(scrollTop);
      } else {
        ({
          adjustedScrollTop: scrollTop - (scrollTop + menu.outerHeight() - cont.innerHeight())
        });
        return move(adjustedScrollTop);
      }
    };
  })(this));

}).call(this);
