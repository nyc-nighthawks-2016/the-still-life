// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {
    $('.done-form').on('click', function(e) {
      e.preventDefault();
      // debugger;
      console.log( "ready!" );
      var method = $(this).attr('method');
      var action = $(this).attr('action');
      $.ajax({
        url: action,
        method: 'put'
      })
      .done(function(response) {

      })
    });
});
