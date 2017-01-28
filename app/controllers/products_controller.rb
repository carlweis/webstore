class ProductsController < ApplicationController
  def index
    @products = Product.order(:name).page params[:page]
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
