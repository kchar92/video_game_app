class PlayerVideoGame < ApplicationRecord
  belongs_to :video_game
  belongs_to :player
end
