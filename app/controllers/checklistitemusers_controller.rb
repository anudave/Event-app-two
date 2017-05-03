class ChecklistitemusersController < ApplicationController
  
  def index
    @checklistitemusers = CheckListItemUser.all
    render "index.html.erb"
  end

end
