class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new
    @cart.save
    render "show"
  end
end
