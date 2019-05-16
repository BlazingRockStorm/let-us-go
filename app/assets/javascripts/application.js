// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap
//= require moment
//= require fullcalendar
//= require gijgo/js/gijgo
//= require_tree .

function eventCalendar() {
  return $('#calendar').fullCalendar({
    nextDayThreshold: '00:00:00',
    events: gon.events
   });
};
function clearCalendar() {
  $('#calendar').fullCalendar('delete');
  $('#calendar').html('');
};

$(document).on('turbolinks:load', function(){
  eventCalendar();
});
$(document).on('turbolinks:before-cache', clearCalendar);

$(function() {
  var imagesPreview = function(input, placeToInsertImagePreview) {

  if (input.files) {
      var filesAmount = input.files.length;
      // alert(filessAmount);
          
      for (i = 0; i < filesAmount; i++) {
          var reader = new FileReader();

          reader.onload = function(event) {
              $($.parseHTML('<img class="mr-2" width="150px" id="img-comment-preview"> <i class="fa fa-close" id="cancel"></i>'))
                  .attr('src', event.target.result)
                  .appendTo(placeToInsertImagePreview);
          }

          reader.readAsDataURL(input.files[i]);
      }
  }

};

$('#image_preview').on("click", "#cancel", function () {
  $('#image_preview').html("");
  $("#comment_image").val('');
});

$('#comment_image').on('change', function(e) {
  e.preventDefault();
  $('#image_preview').html("");
  imagesPreview(this, '#image_preview');
  });

});
