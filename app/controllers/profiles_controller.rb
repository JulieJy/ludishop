class ProfilesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path(@user)
    else
      render :edit
    end
  end

  def my_profile
    @user = current_user
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :phone_number, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
