Category.destroy_all
%w{Starters Entrees Drinks Desserts}.each do |category_name|
  Category.create name: category_name, photo_filename: "#{category_name.downcase}.jpg"
end

puts "#{Category.count} categories."

