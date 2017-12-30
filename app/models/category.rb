class Category < ApplicationRecord
  has_many :series
  has_many :movies

  validates_presence_of :description
end
