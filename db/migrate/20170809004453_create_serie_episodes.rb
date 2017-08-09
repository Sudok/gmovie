class CreateSerieEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :serie_episodes do |t|
      t.references :serie, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
