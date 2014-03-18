class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(params.require(:order).permit(:cart_id, :name, :email, :zipcode, :exp_date, :cvv))
    @order.save
    render "show"
  end
end
