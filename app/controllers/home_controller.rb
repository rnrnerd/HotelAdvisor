class HomeController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def profile
    @user = User.find(params[:id])
  end
end
