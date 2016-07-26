

$(document).ready(function() {
      $('#fullpage').fullpage({
        // sectionsColor: ['#1bbc9b', '#4BBFC3', '#9683ec', '#4BBFC3', '#5bad9f', '#7BAABE', 'whitesmoke', '#ccddff', '#1bbc9b'],
        anchors: ['firstPage', 'secondPage', 'thirdPage', 'fourthPage', 'fifthPage', 'sixthPage', 'seventhPage', 'eighthPage', 'ninthPage'],
        menu: '#menu',
        lockAnchors: false,
        navigation: false,
        navigationPosition: 'right',
        navigationTooltips: ['firstSlide', 'secondSlide'],
        showActiveTooltip: false,
        slidesNavigation: true,
        slidesNavPosition: 'bottom',

        //Scrolling
        css3: false,
        scrollingSpeed: 1000,
        autoScrolling: true,
        fitToSection: true,
        fitToSectionDelay: 1000,
        scrollBar: false,
        easing: 'easeInOutCubic',
        easingcss3: 'ease',
        loopBottom: false,
        loopTop: false,
        loopHorizontal: true,
        continuousVertical: false,
        // fixedElements: '#header',
        scrollOverflow: false,
        scrollOverflowOptions: null,
        touchSensitivity: 15,
        normalScrollElementTouchThreshold: 5,
        bigSectionsDestination: null,

        //Accessibility
        keyboardScrolling: true,
        animateAnchor: true,
        recordHistory: true,

        //Design
        controlArrows: true,
        verticalCentered: true,

        // paddingTop: '3em',
        // paddingBottom: '10px',

        responsiveWidth: 0,
        responsiveHeight: 0,

        //Custom selectors
        sectionSelector: '.section',
        slideSelector: '.slide',

        //events
        onLeave: function(index, nextIndex, direction){
          //leaving first section
          if(index == 1) {
            $('#header').addClass('fixed');
          }
          //back to the first section
          // if(nextIndex == 0) {
          //   $('#header').removeClass('fixed');
          // }
        },
        afterLoad: function(anchorLink, index){},
        afterRender: function(){},
        afterResize: function(){},
        afterSlideLoad: function(anchorLink, index, slideAnchor, slideIndex){},
        onSlideLeave: function(anchorLink, index, slideIndex, direction, nextSlideIndex){}

      });

        // Collapse accordion every time dropdown is shown
    $('.dropdown-accordion').on('show.bs.dropdown', function (event) {
      var accordion = $(this).find($(this).data('accordion'));
      accordion.find('.panel-collapse.in').collapse('hide');
    });

    // Prevent dropdown to be closed when we click on an accordion link
    $('.dropdown-accordion').on('click', 'a[data-toggle="collapse"]', function (event) {
      event.preventDefault();
      event.stopPropagation();
      $($(this).data('parent')).find('.panel-collapse.in').collapse('hide');
      $($(this).attr('href')).collapse('show');
    });

    //Navbar Box Shadow on Scroll 
    $(function(){
        var navbar = $('.navbar');
        $(window).scroll(function(){
            if($(window).scrollTop() <= 40){
                navbar.css('box-shadow', 'none');
            } else {
              navbar.css('box-shadow', '0px 10px 20px rgba(0, 0, 0, 0.4)'); 
            }
        });  
    })

    //Offset scrollspy height to highlight li elements at good window height
    $('body').scrollspy({
        offset: 80
    });

    // Close Nav When Link Is Selected
    $('.panel-body a[href^="#section"], a[href^="#section"]').on('click', function(){
        $('.navbar-collapse').collapse('hide');
        $('.dropdown-toggle').click();
    });
      

});

