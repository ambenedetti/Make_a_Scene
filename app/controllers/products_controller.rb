class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]
  def index
    search
  end

  def show
  set_product
  @booking = Booking.new
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
    set_product
  end

  def update
    set_product
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "#{@product.title} was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_url, notice: "#{@product.title} was successfully destroyed." }
      format.json { head :no_content }

    end
  end

  def userproducts
    set_product
    @user = @product.user
    @products = Product.all
    @userproducts = []
    @products.each do |product|
      if product.user_id == @user.id
        @userproducts << product
      end
    end
    @userproducts
  end

  def search
    if params[:query].present?
      session[:query] = params[:query]
      @products = policy_scope(Product).search_many(params[:query])
    elsif params[:category].present?
      if session[:query] == nil
        @products = policy_scope(Product).where(category: params[:category])
      else
        @products = policy_scope(Product).search_many(session[:query]).where(category: params[:category])
      end
    else
      session[:query] = nil
      @products = policy_scope(Product)
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :daily_cost, :location, :category, :style)
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end
