class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.user = User.find(params[:user_id])
    if @review.save
      redirect_to user_path(@user)
    else
      render 'user/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
