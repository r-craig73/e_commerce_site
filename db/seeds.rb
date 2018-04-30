# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Product.destroy_all

5.times do
  @name = Faker::Simpsons.character
  @price = Faker::Number.decimal(2, 2)
  @description = Faker::Hipster.paragraph(2)
  @created_at = Faker::Time.backward(8, :all)
  Product.create!(name: @name, price: @price, description: @description, created_at: @created_at)
  @product_id = Product.last.id

end

# rake db:drop db:create db:migrate

p "Created #{Product.count} simpson products"
