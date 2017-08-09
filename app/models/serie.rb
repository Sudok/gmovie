class Serie < ApplicationRecord
  belongs_to :category
  has_many :serie_episodes
  has_many :episodes, through: :serie_episodes
end
