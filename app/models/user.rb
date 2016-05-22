class User < ActiveRecord::Base
  has_many :products
  has_many :orders

  validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
