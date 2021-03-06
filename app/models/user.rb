class User < ActiveRecord::Base
  validates :first_name, presence: :true
  validates :email, presence: :true
  has_secure_password

  has_many :orders
  has_many :carts
end
