class Cart < ActiveRecord::Base
#  attr_accessible :title, :body
  has_many :line_items, :dependent => :destroy
  def add_product(product_id)
  	current_item = LineItem.find_by_product_id(product_id)
  	if current_item
  		current_item.quantity += 1
  	else
  		current_item = line_item.build(product_id = product.id)
  	end
  	current_item
  end
end
