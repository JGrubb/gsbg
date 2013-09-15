class PressItemsController < ApplicationController

  def index
    @press_items = PressItem.all
  end

  def new
    @press_item = PressItem.new
  end

  def create
    @press_item = PressItem.create press_item_params
    redirect_to press_items_path
  end

  private

  def press_item_params
    params.require(:press_item).permit(:pub, :date, :link, :quote)
  end
end
