/* global Vue, $, EVENT_ID */
/* eslint camelcase: 0 */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      event: {}
    },
    methods: {
      toggleCheckListItem: function(check_list_item) {
        // check_list_item.completed = !check_list_item.completed;
        console.log(check_list_item.description, 'the id is', check_list_item.id);
        var params = {
          form_checklist_item_id: check_list_item.id,
          form_user_id: this.event.user_id,
          form_checked: check_list_item.checked
        };
        console.log(params);
        $.ajax({
          url: '/api/v1/checklistitemusers/' + check_list_item.id,
          type: 'PATCH',
          data: params,
          datatType: 'json',
          error: function() {
            console.log('Error');
          },
          success: function(data) {
            console.log('success');
          }
        });
      },
    },
    mounted: function() {
      $.get('/api/v1/events/' + EVENT_ID, function(responseData) {
        this.event = responseData;
        console.log("The event id is: ", EVENT_ID, this.event);
      }.bind(this));
    }
  });
});
