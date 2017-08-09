class Episode < ApplicationRecord
  belongs_to :category
  has_many :serie_episodes
  has_many :series, through: :serie_episodes
end
