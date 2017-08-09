class Episode < ApplicationRecord
  belongs_to :category
  belongs_to :serie
end
