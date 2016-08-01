namespace :db do
  # desc "TODO"
  # task create_categories: :environment do
  #   Category.create(:name => "Category 1")
  # end

  desc "TODO"
  task create_products: :environment do
    
    (1..25).each do |num|
      Product.create(
        :category_id => 2,
        :name => "Product #{num}",
        :price => 10*num,
        :description => "This is Product #{num}",
        :image => File.open("/home/comp/Pictures/#{num}.jpg"))
    end
  end

end
