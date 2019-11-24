class VideoGame < ApplicationRecord
  has_many :player_video_games
  has_many :players, through: :player_video_games
end
