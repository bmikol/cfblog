class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :body, presence: true
  validates :title, presence: true
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
end
