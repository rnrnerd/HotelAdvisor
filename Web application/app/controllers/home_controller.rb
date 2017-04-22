
class HomeController < ApplicationController
  def index
    redirect_to hotels_path
  end
end