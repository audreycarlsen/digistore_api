class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    render "show"
  end

  def update
    render "show"
  end

  def destroy
    render "index"
  end
end
