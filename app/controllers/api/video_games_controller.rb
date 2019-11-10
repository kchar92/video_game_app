class Api::VideoGamesController < ApplicationController

  def index
    @games = VideoGame.all
    render 'video_game_index.json.jb'
  end
  
end
