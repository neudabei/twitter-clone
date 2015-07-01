class User < ActiveRecord::Base
  has_many :statuses

  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
end