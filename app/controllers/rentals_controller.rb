class RentalsController < ApplicationController
  before_action :set_rental, only: [:show]

  def show; end

  def create
    @dress = Dress.find(params[:dress_id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.dress = @dress
    @rental.price = @dress.price
    if @rental.save
      redirect_to @rental
    else
      render 'dresses/show'
    end
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

end
