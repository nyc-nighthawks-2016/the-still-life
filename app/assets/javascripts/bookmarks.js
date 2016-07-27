// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {

    $(".bookmark-form").submit(function(e) {
      e.preventDefault();
      target = $(e.target)
      $.ajax({
        url: target.attr('action'),
        method: 'post',
        data: $(target).serialize()
      })
        .done(function(response){
          $(target).parent().replaceWith(response)
        })
    });

});
