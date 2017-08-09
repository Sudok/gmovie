class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :title
      t.string :subtitle
      t.string :rating
      t.string :subname
      t.string :duration
      t.string :synopsis
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
