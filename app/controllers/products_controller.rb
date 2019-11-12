class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]
  def index
    @products = policy_scope(Product)
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
  end

  def create
    authorize @product
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
  end

  def set_products
  end
end
