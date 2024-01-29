class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  attr_accessor :title, :body
end
