class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @user = User.find(params[:user_id])
    @receiver = User.find(params[:receiver_id])
  end

  # POST /users/:user_id/reviews
  def create
    @user = User.find(params[:user_id])
    @receiver = User.find(param[:receiver_id])
    @review = Review.new(review_params)
    @review.user = @user
    @review.receiver_id = @receiver

    if @review.save
      redirect_to profile_path(@user)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rate, :content)
  end

end
