class Movie < ApplicationRecord

  validates :title, presence: true

  validates :year, numericality: true
  
  validates :plot, length: { minimum: 10}, presence: true
end
