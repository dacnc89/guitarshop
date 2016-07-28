class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  has_many :orders, through: :line_item

  has_attached_file :image, :styles => { :medium => "150x", :thumb => "300x300>" },   :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)     
end
