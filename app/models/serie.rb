class Serie < ApplicationRecord
  belongs_to :category
  has_many :episodes
end
