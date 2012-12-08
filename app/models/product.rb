class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  has_many :line_items
  validates :title, :description, :image_url, :price, :presence => true
  validates :title, :uniqueness => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => { :with => %r{\.(jpg|gif|png)$}i,
  									 :message => "Only jpg,png,gif required!"}
  default_scope :order => 'price'
  before_destroy :ensure_not_referenced_by_any_line_item
  def ensure_not_referenced_by_any_line_item
  	if line_items.empty?
  		true
  	else
  		errors.add(:base,"What are you doing, dude? There are line items")
  		false
  	end
  end
end