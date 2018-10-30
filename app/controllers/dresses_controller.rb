class DressesController < ApplicationController
  def index
    @dresses = Dress.all
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Cocktail.new(dress_params)
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
    params.require(:dress).permit(:title, :description, :category, :price, :size)
  end

  def find_dress
    @dress = Cocktail.find(params[:id])
  end
end


