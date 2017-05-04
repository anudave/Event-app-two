class ChecklistitemsController < ApplicationController

  def index
    @checklistitems = CheckListItem.all
    render "index.html.erb"
  end

end
