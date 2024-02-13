class Post < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_title, against: :title
  pg_search_scope :search_by_body, against: :body

  validates :title, presence: true
  validates :body, presence: true
end
