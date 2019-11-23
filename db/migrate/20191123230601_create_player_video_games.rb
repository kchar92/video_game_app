class CreatePlayerVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :player_video_games do |t|
      t.integer :video_game_id
      t.integer :player_id

      t.timestamps
    end
  end
end
