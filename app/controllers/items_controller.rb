class ItemsController < ApplicationController

  before_action :find_item

  def toggle_checked
    @item.update(checked: !@item.checked)
    # todo : ajax
    redirect_to current_list_path
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end
end
