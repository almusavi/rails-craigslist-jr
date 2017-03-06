class Article < ActiveRecord::Base
  belongs_to :category

  validates :title, :body, :category_id, :price, presence: true
  validates :title, uniqueness: true

  before_save :create_secret_key

  def create_secret_key
    self.secret_key = SecureRandom.hex(4)
  end
end
