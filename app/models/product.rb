

class Product < ActiveRecord::Base

  belongs_to :supplier
  belongs_to :user
  has_many :images
  has_many :orders, through: :carted_products
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products

  validates :name, :price, presence: true
  validates :price, numericality: {only_integer: true, greater_than: 0}
  validates :name, uniqueness: true


  DISCOUNT_THRESHOLD = 50
  SALES_TAX = 0.09

  def sale_message
    if price < DISCOUNT_THRESHOLD
      return "Discount Item!"
    else
      return "On Sale!"
    end
  end

  def tax
    return price * SALES_TAX
  end

  def total
    "#{price + tax.to_f}" #tax is CALLING A METHOD not an attribute!
  end


end
