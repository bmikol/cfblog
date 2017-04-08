class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :article, presence: true
  validates :body, presence: true
  validates :user, presence: true
end
