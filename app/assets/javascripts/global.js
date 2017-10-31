// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('turbolinks:load', function() {

    console.log("turbolinks:load");
  // Link to specified page when clicking table rows
  $('table.row-links').on('click', 'tbody tr', function(event) {
    Turbolinks.visit($(this).data('link'))
  });
});
