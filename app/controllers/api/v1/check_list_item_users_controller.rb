class Api::V1::CheckListItemUsersController < ApplicationController

  def update
    @checklistitemuser = CheckListItemUser.find_by(
      checklist_item_id: params[:form_checklist_item_id],
      user_id: params[:form_user_id]
    )
    if @checklistitemuser
      @checklistitemuser.checked = params[:form_checked]
      @checklistitemuser.save
    else
      @checklistitemuser = CheckListItemUser.new(
        checklist_item_id: params[:form_checklist_item_id],
        user_id: params[:form_user_id],
        checked: params[:form_checked]
      )
      @checklistitemuser.save
    end
    render "show.json.jbuilder"
  end

end
