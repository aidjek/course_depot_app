require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "validates presents of atttibutes" do |variable|
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:title].any?
  end
  test "validates price" do
  	product = Product.new(:title => "string", :description => "string", :image_url => "string")
  	product.price = 1
  	assert (product.price).invalid?
  	product.price = -0.01
  	assert (product.price).invalid?
  	product.price = 0.0
  	assert (product.price).invalid?
  	product.price = 0.01
  	assert (product.price).valid?
  end
  test "valid uniqueness" do
  	product = Product.new( :description => "string", :image_url => "string", :price => 99 )
  	product.title = products(:alice).title
  	assert !product.save
  end
end
