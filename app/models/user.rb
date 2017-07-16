class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 20 },
                       uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    format: VALID_EMAIL_REGEX
  validates :password, presence: true, length: { minimum: 8 }
end
