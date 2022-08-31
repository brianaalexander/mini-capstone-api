# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "dresses", price: 10, image_url: "#", description: "summer wear")
product.save
product = Product.new(name: "pants", price: 15, image_url: "#", description: "long shorts")
product.save
product = Product.new(name: "shorts", price: 8, image_url: "#", description: "short pants")
product.save
product = Product.new(name: "shoes", price: 20, image_url: "#", description: "feet covers")
product.save
