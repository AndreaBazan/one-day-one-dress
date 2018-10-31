class Dress < ApplicationRecord
  CATEGORIES =  %w[evening cocktail day special]
  SIZES = %w[XS S M L XL]

  belongs_to :user
  has_many :rentals
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :heigth, presence: true

  def self.search(search)
    if search
      self.where('title LIKE :title OR description LIKE :title', :title=> "%#{search}%")
    else
      Dress.all
    end
  end
end
