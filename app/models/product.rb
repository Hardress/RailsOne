class Product < ApplicationRecord
  has_many :comments

  validates :name, presence: true

  def self.search(search_term)
    if RAILS.environment.production?
      Product.where("name LIKE ? OR colour LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    else
      Product.where("name ilike ?", "%#{search_term}%")
    end

  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_desc.last
  end

  def average_rating
    comments.average(:rating).to_f
  end

end

