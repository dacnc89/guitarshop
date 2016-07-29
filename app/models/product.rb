class Product < ActiveRecord::Base
  
  # paginate
  # self.per_page = 6

  belongs_to :category
  has_many :line_items
  has_many :orders, through: :line_item

  has_attached_file :image, :styles => { :medium => "150x", :thumb => "180x180" },   :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)     

end
