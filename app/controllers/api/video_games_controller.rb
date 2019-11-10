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
      title: params[:game_title],
      description: params[:game_description],
      price: params[:game_price],
      rating: params[:game_rating]
      )
    @game.save
    render 'video_game_show.json.jb'
  end

  def update
    game_id = params[:id]
    @game = VideoGame.find_by(id: game_id)

    @game.title = params[:game_title]
    @game.description = params[:game_description]
    @game.price = params[:game_price]
    @game.rating = params[:game_rating]

    @game.save

    render 'video_game_show.json.jb'
  end

  def destroy
    game_id = params[:id]
    @game = VideoGame.find_by(id: game_id)

    @game.destroy

    render 'video_game_destroy.json.jb'
  end

end
