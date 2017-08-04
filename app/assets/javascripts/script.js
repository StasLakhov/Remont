
$(window).load(function () {
		$(".loaded").fadeOut();
		$(".preloader").delay(1000).fadeOut("slow");
	});


// Go to next section
	var gotToNextSection = function(){
		var el = $('.fh5co-learn-more'),
			w = el.width(),
			divide = -w/2;
		el.css('margin-left', divide);
	};
// Scroll Next
	var ScrollNext = function() {
		$('body').on('click', '.scroll-btn', function(e){
			e.preventDefault();

			$('html, body').animate({
				scrollTop: $( $(this).closest('[data-next="yes"]').next()).offset().top
			}, 1000, 'easeInOutExpo');
			return false;
		});
	};

//this code is for animation nav
     jQuery(window).scroll(function() {
        var windowScrollPosTop = jQuery(window).scrollTop();

        if(windowScrollPosTop >= 120) {
          jQuery(".top-header").css({"background": "#18171D",});
          jQuery(".top-header img.logo").css({"margin-top": "0px"});
          jQuery(".nav-bar").css({"margin-top": "6px",});
        }
        else{
          jQuery(".top-header").css({"background": "transparent",});
           jQuery(".top-header img.logo").css({"margin-top": "-5px"});
           jQuery(".nav-bar").css({"margin-top": "28px"});
          
        }
     });

//     Google Map 
    

    var map = new GMaps({
        el: '#map',
        lat: 49.831103,
        lng: 23.969860,
        scrollwheel: false
    });

    map.addMarker({
        lat: 49.831103,
        lng: 23.969860
    });
	

/*---------------------------------------------*
     * Scroll Up
     ---------------------------------------------*/
    $(window).scroll(function () {
        if ($(this).scrollTop() > 600) {
            $('.scrollup').fadeIn('slow');
        } else {
            $('.scrollup').fadeOut('slow');
        }
    });

    $('.scrollup').click(function () {
        $("html, body").animate({scrollTop: 0}, 1000);
        return false;
    });


    // modal
    $("#myModal").on('show.bs.modal', function(event){
        var button = $(event.relatedTarget);  // Button that triggered the modal
        var titleData = button.data('title'); // Extract value from data-* attributes
        $(".modal-title").text(titleData);
        var itemId=button.data('id');
        var itemElement=$('#itemId');
        itemElement.val(itemId);
    });
