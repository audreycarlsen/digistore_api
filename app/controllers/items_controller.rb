class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def post
    render "index"
  end

  def update
    render "index"
  end

  def destroy
    render "index"
  end
end
