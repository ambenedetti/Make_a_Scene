class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]
  def index
    @products = policy_scope(Product)
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    @product.user = current_user
    if @product.save
      redirect_to new_product_image_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @product
  end

  def destroy
    authorize @product
  end

  def search
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :daily_cost, :location, :category, :style)
  end

  def set_products
  end
end
