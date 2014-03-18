class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.new(params.require(:item).permit(:current_price, :quantity, :cart_id, :product_id))
    @item.save
    render "index"
  end

  def update
    @item = Item.find(params[:id])
    @item.update(params.require(:item).permit(:current_price, :quantity, :cart_id, :product_id))
    render "index"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render "index"
  end
end
