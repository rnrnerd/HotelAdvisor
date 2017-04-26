class Api::V1::HotelsController < ApplicationController
  include ActionController::Serialization
  before_filter find_hotel, :except => [:index, :create]
  respond_to :json

  def index
    @hotels = Hotel.all

    render json: @hotels, status: 200
  end

  def show
    render json: @hotel, status: 200
  end

  def create
    @hotel = Hotel.new

    if @hotel.save

    end
  end

  def update

  end

  def destroy

  end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def permitted_params
    params.require(:hotel).permit(:title, :star_rating, :room_description)
  end
end

