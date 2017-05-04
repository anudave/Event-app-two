class EventTypesCheckListItemsController < ApplicationController
  
  def index
    @event_types_check_list_items = EventTypeCheckListItem.all
    render "index.html.erb"
  end

end
