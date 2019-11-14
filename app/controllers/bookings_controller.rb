class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = policy_scope(Booking)
    @bookings = Booking.where(user: @user)
  end

  def show
  end

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
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy; end

  def accepted!
    set_booking
    raise
    booking.status = accepted
  end

    def rejected!
    booking.status = rejected
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_cost)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
