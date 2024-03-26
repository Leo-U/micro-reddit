class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 1, maximum: 500 }
end
