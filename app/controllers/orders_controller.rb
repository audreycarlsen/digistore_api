class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.create(
      cart_id:  order_params[:cart],
      name:     order_params[:name],
      email:    order_params[:email],
      zipcode:  order_params[:zipcode],
      exp_date: order_params[:exp_date],
      cvv:      order_params[:cvv])
    render "show"
  end

  private

  def order_params
    params.require(:order).permit(:cart, :name, :email, :zipcode, :exp_date, :cvv)
  end
end
