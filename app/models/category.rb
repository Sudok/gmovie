class Category < ApplicationRecord
  has_many :series
  has_many :movies
end
