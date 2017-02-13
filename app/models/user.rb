class User < ApplicationRecord
  has_many :questions
  has_many :answers

  validates_presence_of :email, :username, :hashed_password
  validates_uniqueness_of :email, :username
end
