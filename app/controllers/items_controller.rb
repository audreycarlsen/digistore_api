class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      current_price: item_params[:current_price])
    @item.save
    render "index"
  end

  def update
    @item = Item.find(params[:id])
    @item.update(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      current_price: item_params[:current_price])
    render "index"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render "index"
  end

  private

  def item_params
    params.require(:item).permit(:current_price, :quantity, :cart, :product)
  end
end
