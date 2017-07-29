class BookingsController < ApplicationController
  before_action :set_rental

  def index
    redirect_to rental_path(@rental)
  end

  def new
    @booking = Booking.new
  end

  def edit
    booking.persisted = true
  end

  def create
    @booking = Booking.new(booking_params.merge(dates))
    if @booking.save
      redirect_to rental_path(@rental)
    else
      render 'new'
    end
  end

  def update
    if booking.update_attributes(booking_params.merge(dates))
      redirect_to rental_path(@rental)
    else
      render 'edit'
    end
  end

  def destroy
    response = @booking.destroy
    redirect_to rental_path(params[:rental_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at,:end_at, :client_email, :price, :rental_id, :daily_rate)
  end

  def booking
    @booking ||= Booking.find(params[:id], params: { rental_id: params[:rental_id]})
  end

  def set_rental
    @rental = Rental.find(params[:rental_id]) if params[:rental_id]
  end

  def dates
    start_date =  DateTime.strptime(booking_params[:start_at], '%m/%d/%g %H %M')
    end_date =  DateTime.strptime(booking_params[:end_at], '%m/%d/%g %H %M')
    {:start_at => start_date,:end_at => end_date}
  end
end
