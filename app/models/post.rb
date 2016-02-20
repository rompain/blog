class Post < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :body, presence: true
  has_many :comments, dependent: :destroy
  has_many :tags, through: :post_tags#, dependent: :destroy
end
