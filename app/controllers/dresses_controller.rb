class DressesController < ApplicationController
  before_action :set_dress, only: [:show]
  def index
    @dresses = Dress.all
  end

  def show
    @rental = Rental.new
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user
    if @dress.save
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def destroy
    @dress.destroy
    redirect_to dress_path
  end

  private

  def dress_params
    params.require(:dress).permit(:title, :description, :category, :price, :size, :heigth)
  end

  def set_dress
    @dress = Dress.find(params[:id])
  end

end


