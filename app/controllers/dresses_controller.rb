class DressesController < ApplicationController
  before_action :set_dress, only: [:show]
  def index
    @dresses = Dress.all
  end

  def show
    @rental = Rental.new
  end

   private

   def set_dress
     @dress = Dress.find(params[:id])
   end
end
