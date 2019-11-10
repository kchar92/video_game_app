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
end
