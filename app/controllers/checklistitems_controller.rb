class ChecklistitemsController < ApplicationController

  def index
    @checklistitem = CheckListItem.all
    render "index.html.erb"
  end

end
