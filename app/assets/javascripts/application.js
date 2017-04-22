// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require moment
//= require fullcalendar
//= require turbolinks
//= require_tree .


$(document).on('turbolinks:load', function() {
  $('#calendar').fullCalendar({
    eventColor: '#669999',
    events: '/lessons.json',
    editable: true, 
    droppable: true,
    eventRender: function(event, element) { 
      element.find(".fc-time").remove();
      element.find('.fc-title').append("<br/>" + moment(event.start).format("HH:mm")  + '-' + moment(event.end).format("HH:mm") + "<br/>" + event.name + "<br/>" + event.description); 
    },
    eventDrop: function(event, delta, revertFunc) {

        alert(event.title + " was dropped on " + event.start.format());

        if (!confirm("Are you sure about this change?")) {
            revertFunc();
        }
        $.ajax({
          type: 'PUT',
          url: '/lessons/' + event.id,
          dataType: 'json',
          data: { lesson: { start_time: new Date(event.start).toUTCString(), end_time: new Date(event.end).toUTCString()  } }
        });
    }
  });
});
