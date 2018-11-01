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

  scope :by_title_and_description, -> (title_or_desc){where("title @@ :title_or_desc OR description @@ :title_or_desc", title_or_desc: title_or_desc)}
  scope :by_size, -> (size){where("size ILIKE :size", size: size)}
  scope :by_category, -> (category){where("category ILIKE :category", category: category)}

  def self.search(search, size, category)

    result = Dress.all

    if search.present?
      result = result.by_title_and_description(search)
    end
    
    if size.present?
      result = result.by_size(size)
    end

    if category.present?
      result = result.by_category(category)
    end

    return result
  end
end
