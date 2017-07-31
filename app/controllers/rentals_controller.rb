class RentalsController < ApplicationController

  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new(name: '', daily_rate: '')
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to @rental
    else
      render 'new'
    end
  end

  def show
    @bookings = rental.bookings
  end

  def edit
    rental.persisted = true
  end

  def update
    if rental.update_attributes(rental_params)
      redirect_to rental
    else
      render 'edit'
    end
  end

  def destroy
    response = rental.destroy
    redirect_to rentals_path
  end

  def search_rentals
    @rentals = Rental.all(params: params) if params[:start_at].present?
  end

  private

  def rental_params
    params.require(:rental).permit(:name, :daily_rate)
  end

  def rental
    @rental ||= Rental.find(params[:id])
  end
end
