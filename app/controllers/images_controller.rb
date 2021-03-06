class ImagesController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @images = @product.images
    @products = policy_scope(Product)
  end

  def new
    @product = Product.find(params[:product_id])
    @image = Image.new
    authorize @image
  end

  def create
    @image = Image.new(image_params)
    @product = Product.find(params[:product_id])
    @image.product = @product
    authorize @image
    if @image.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @product = @image.product
    authorize @product
    @image.destroy
    respond_to do |format|
      format.html { redirect_to product_path(@product), notice: "Your image was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private

  def image_params
    params.require(:image).permit(:data)
  end
end
