class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def create
    render "show"
  end

  def update
    render "show"
  end
end
