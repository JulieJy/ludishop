class GamesController < ApplicationController

  before_action :find_game, only: [:destroy, :update, :edit, :show]
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save!
      p 'oui'
      redirect_to game_path(@game)
    else
      p 'non'
      render :new
    end
  end

  def index
    @games = Game.all
  end

  def show
    @user = User.new
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :state, :price, :photo)
  end
end
