class HotelsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @hotels = Hotel.page(params[:page]).per(2)
  end

  def show
    @hotel = Hotel.find(params[:id])
    @reviews = Review.find_by hotel_id: @hotel.id
    @review = Review.new
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(permitted_params)

    if @hotel.save
      redirect_to hotels_path
    else
      render :new
    end
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

  private
  def permitted_params
    params.require(:hotel).permit(:title, :star_rating,
                                  :breakfast_included, :room_description,
                                  :price_for_room, :address, :photo, :user_id)
  end
end
