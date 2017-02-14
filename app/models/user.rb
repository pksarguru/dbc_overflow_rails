class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :comments

  validates_presence_of :email, :username
  validates_uniqueness_of :email, :username

  has_secure_password
end
