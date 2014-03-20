class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(
      cart_id:  order_params[:cart],
      name:     order_params[:name],
      email:    order_params[:email],
      zipcode:  order_params[:zipcode],
      exp_date: order_params[:exp_date],
      cvv:      order_params[:cvv],
      status:   order_params[:status])

    if @order.save
      OrderMailer.confirmation(@order.id).deliver
      render "show"
    else
      render text: 'There was a problem processing your order.', :status => 400
    end
  end

  private

  def order_params
    params.require(:order).permit(:status, :cart, :name, :email, :zipcode, :exp_date, :cvv, :cc_number)
  end
end
