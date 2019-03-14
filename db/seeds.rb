# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

json = File.read("./vendor/db.json")
@all_product = JSON.parse(json)


@all_product.each do |f|
  Product.create!(
    surl: f["url"],
    title: f["title"],
    price: f["price"],
    asin: f["asin"],
    price_es: f["price_es"],
    price_it: f["price_it"],
    price_de: f["price_de"])
end

