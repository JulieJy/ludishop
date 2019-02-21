class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_game, only: [:destroy, :update, :edit, :show, :payment, :confirmed]

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save!
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def index
    @games = Game.all.where(buyer_id: nil)
    if params[:query].present?
      @games = Game.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @games = Game.all
    end

    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lng: user.longitude,
        lat: user.latitude,
        image_url: helpers.asset_url('https://uxwing.com/wp-content/themes/uxwing/download/24-sport/chess-knight.png')
      }
     end
  end

  def show
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  def payment
  end

  def confirmed
    @user = User.find(@game.user_id)
    @game.buyer_id = current_user.id
    @game.transaction_date = Time.now
    @game.save!
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :state, :price, :photo)
  end
end
