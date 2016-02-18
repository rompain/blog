class Post < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 5, maximum: 50}
  validates :body, presence: true
  has_many :comments
end
