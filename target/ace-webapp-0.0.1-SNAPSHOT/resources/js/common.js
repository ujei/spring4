$(document).ready(function() {
	$("input").fakeform();

	$(".btn-post").on("click", function() {
		$(".info li").removeClass("hide");
		$(".c-button--disable").addClass("hide");
		$(".c-button--red").removeClass("hide");
			
		return false;
	});

  var $ripple = $('.js-ripple');

  $ripple.on('click', function(e) {

    var $this = $(this);
    var $offset = $this.parent().offset();
    var $circle = $this.find('.c-ripple__circle');

    var x = e.pageX - $offset.left;
    var y = e.pageY - $offset.top;

    $circle.css({
      top: y + 'px',
      left: x + 'px'
    });

    $this.addClass('is-active');

  });

  $ripple.on('animationend webkitAnimationEnd oanimationend MSAnimationEnd', function(e) {
  	$(this).removeClass('is-active');
  });
});
