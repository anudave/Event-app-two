/* global Vue, $, EVENT_ID */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      event: {}
    },
    mounted: function() {
      $.get('/api/v1/events/' + EVENT_ID, function(responseData) {
        this.event = responseData;
        console.log("The event id is: ", EVENT_ID, this.event);
      }.bind(this));
    },
  });
});
