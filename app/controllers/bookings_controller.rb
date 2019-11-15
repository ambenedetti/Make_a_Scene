class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = policy_scope(Booking)
    @bookings = Booking.where(user: @user)
  end

  def show; end

  def new
    @booking = Booking.new()
    @product = Product.find(params[:product_id])
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @product = Product.find(params[:product_id])
    authorize @product
    @booking.product = @product
    @booking.user = @user
    @booking.status = 0
    if @booking.save
      redirect_to dashboard_path(@user)
    else
      render "products/show", product: @product, booking: @booking
    end
  end

  def edit
    set_booking
  end
  def update
    set_booking
    @product = @booking.product
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to bookings_path, notice: "The booking for #{@product.title} was successfully updated." }
        format.json { render :show, status: :ok, location: @bookings }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy; end

  def accepted
    set_booking
    @booking.accepted!
    redirect_to dashboard_path, notice: 'booking accepted'
  end

  def rejected
    set_booking
    @booking.rejected!
    redirect_to dashboard_path, notice: 'booking rejected'
  end

  def canceled
    set_booking
    @booking.rejected!
    redirect_to bookings_path, notice: 'booking canceled'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_cost)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
