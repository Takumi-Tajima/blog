class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :default_order, -> { order(:id) }
  scope :published, -> { where.not(published_at: nil) }
end
