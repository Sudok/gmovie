class SerieEpisode < ApplicationRecord
  belongs_to :serie
  belongs_to :episode
end
