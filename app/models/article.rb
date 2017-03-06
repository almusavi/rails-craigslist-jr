class Article < ActiveRecord::Base
  belongs_to :category

  validates :title, :body, :category_id, :price, presence: true
  validates :title, uniqueness: true
end
