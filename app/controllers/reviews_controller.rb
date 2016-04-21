class ReviewsController < ApplicationController
	def new
    @review = Review.new(:tour_id => params[:tour_id] , :user_id => current_user.id)
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to bookings_path , :notice => "Review saved successfully"
    else
      render "new" , :notice => "Please fill up all fields"
    end
  end

  private
  def review_params
    params.require(:review).permit(:review_title , :comment , :user_id , :tour_id)
  end
end
