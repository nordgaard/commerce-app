class CartedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validate :quantity_must_be_less_than_5


  def quantity_must_be_less_than_5
    if quantity > 4
      errors.add(:quantity, "Hey don't be a dick, other people need cars too")
    end
  end
end
