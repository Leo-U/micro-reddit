class Post < ApplicationRecord
  VALID_URL_REGEX = /\A(http:\/\/|https:\/\/)?(www\.)?([a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,})\z/

  validates :title, presence: true, uniqueness: true, length: { minimum: 1, maximum: 20 }
  
  validates :url, presence: true, uniqueness: true, format: { with: VALID_URL_REGEX }

  belongs_to :user
end
