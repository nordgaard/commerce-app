class Supplier < ActiveRecord::Base
  has_many :products

  validates :name, :phone, :email, presence: true

end
