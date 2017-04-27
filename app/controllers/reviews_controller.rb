class ReviewsController < ApplicationController
  def index
    @reviews = Review.page(params[:page]).per(1)
    render :partial => 'reviews/list'
  end

  def create
    @review = Review.new(permitted_params)
    if @review.save
      render :text => 'Success!'
    else
      render :text => 'Fail!'
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy

    redirect_to hotels_path
  end

  private
  def permitted_params
    params.require(:review).permit(:text, :created_at,
                                   :user_id, :hotel_id)
  end
end
