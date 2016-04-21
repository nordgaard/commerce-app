#• Create a model method called sale_message that does as follows: If an item is under $2, it returns the string “Discount Item!” - otherwise, it should return the string “On Sale!” Then, have this message appear on the product’s show page. 
#Create a model method called tax which will return the tax that would be charged for a particular product. (Assume a 9% tax rate.)
#Create a model method called total which will return the sum of the price + tax.
#Have the price, tax, and total appear on the product’s show page.

class Product < ActiveRecord::Base

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
