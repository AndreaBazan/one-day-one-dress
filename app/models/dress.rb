class Dress < ApplicationRecord
  CATEGORIES =  %w[evening cocktail day special]
  SIZES = %w[XS S M L XL]

  belongs_to :user
  validates :price, presence: true
  validates :size, presence: true 
  validates :heigth, presence: true
end
