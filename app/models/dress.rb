class Dress < ApplicationRecord
  belongs_to :user
  validates :price, presence: true
  validates :size, presence: true 
  validates :heigth, presence: true
end
