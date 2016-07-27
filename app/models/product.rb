class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  has_many :orders, through: :line_item

  has_attached_file :image
  validates_attachment_presence :image
end
