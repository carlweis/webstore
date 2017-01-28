class Admin::ProductsController < ApplicationController
  def index
    @products = Product.order(:created_at).page params[:page]
  end

  def new
  end

  def create
    product = Product.build(product_params)
    if product.save
      flash[:notice] = "New Product #{product.name}"
      redirect_to admin_products_path
    else
      flash[:alert] = "Faild to create new product."
      render :new
    end
  end
end
