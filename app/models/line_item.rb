class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  # li = LineItem.find(...)
  # puts "This line item is for #{li.product.title}"

  def total_price
    product.price * quantity
  end

end
