# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Category.create!(name: "Pets")
cat2 = Category.create!(name: "Cars")
cat3 = Category.create!(name: "Home Goods")

art1 = cat1.articles.create!(title: "Dog for sale", body: "He poops in the house, but NBD", price: 40.00)
art2 = cat2.articles.create!(title: "Farari for sale", body: "No engine, no wheels, no doors", price: 2.00)
art3 = cat3.articles.create!(title: "Whisk for sale", body: "You can beat eggs with it or make a cake", price: 100.00)
