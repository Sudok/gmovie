class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :subtitle
      t.string :rating
      t.string :subname
      t.string :duration
      t.text :synopsis, limit: 255
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
