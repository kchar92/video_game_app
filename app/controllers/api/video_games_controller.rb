class Api::VideoGamesController < ApplicationController

  def index
    @games = VideoGame.all
    render 'video_game_index.json.jb'
  end
  
  def show
    game_id = params[:id]
    @game = VideoGame.find_by(id: game_id)
    render 'video_game_show.json.jb'
  end

  def create
    @game = VideoGame.new(
      title: params[:input_name],
      description: params[:input_description],
      price: params[:input_price],
      rating: params[:input_rating]
      )
    @game.save
    render 'video_game_show.json.jb'
  end
end
