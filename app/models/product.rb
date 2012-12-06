class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :price, :presence => true
#  validates :title, :uniqueness => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => { :with => %r{\.(jpg|gif|png)$}i,
  									 :message => "Only jpg,png,gif required!"}
  default_scope :order => 'price'
end
