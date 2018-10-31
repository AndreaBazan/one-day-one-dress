class DressesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_dress, only: [:show]
  
  def home
    @dresses = Dress.all.search(params[:search])
  end 

  def index
    @dresses = Dress.all.search(params[:search])
  end

  def show
    @rental = Rental.new
  end

  def new
    @dress = Dress.new
  end

  def edit
    @dress = Dress.find(params[:id])
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user
    if @dress.save
      redirect_to dress_path(@dress), notice: 'Your dress was successfully listed!'
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
    params.require(:dress).permit(:title, :description, :category, :price, :size, :heigth, :search)
  end

  def set_dress
    @dress = Dress.find(params[:id])
  end

end


