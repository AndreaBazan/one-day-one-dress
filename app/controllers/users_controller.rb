class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @dresses = @user.dresses
    @dress = Dress.new
  end
end
