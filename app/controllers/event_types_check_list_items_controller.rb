class EventTypesCheckListItemsController < ApplicationController
  
  def showchecklist
    eventtypechecklistitem_id = params[:id]
    @eventtypechecklistitems = EventTypeCheckListItem.find_by(id: eventtypechecklistitem_id )
    render "showchecklist.html.erb"
  end
end
