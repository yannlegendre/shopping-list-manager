class ItemsController < ApplicationController

  before_action :find_item

  def toggle_checked
    @item.update(checked: !@item.checked)
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end
end
