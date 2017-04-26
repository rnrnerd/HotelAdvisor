class HotelsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(params[:hotel])
    if @hotel.save
      flash[:notice] = ""
      redirect_to hotels_path
    else
      render :new
    end
  end
  @user = User.new(params[:user])
  if @user.save
    flash[:notice] = "Successfully created user."
    redirect_to @user
  else
    render :action => 'new'
  end
  def edit
    @hotel = Hotel.find(params[:id])
  end

  def update
    @hotel = Hotel.find(params[:id])

    if @hotel.update_attributes(permitted_params)
      redirect_to hotels_path
    else
      render :edit
    end
  end

  def destroy
    hotel = Hotel.find(params[:id])
    hotel.destroy

    redirect_to hotels_path
  end
end
