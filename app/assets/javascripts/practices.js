// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {
    $('.done-form').on('submit', function(e) {
      e.preventDefault();
      target = e.target

      var method = $(this).attr('method');
      var action = $(this).attr('action');
      $.ajax({
        url: action,
        method: 'put',
        data: $(this).serialize()
      })
      .done(function(response) {

        $(target).hide();
      })
    });
});
