class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :rating

      t.timestamps
    end
  end
end
