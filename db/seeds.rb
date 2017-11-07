# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Item.destroy_all
# Category.destroy_all
# User.destroy_all
# Basket.destroy_all


lettuce = Category.create(title: "Lettuce")
tomato = Category.create(title: "Tomato")
eggplant = Category.create(title: "Eggplant")
pepper = Category.create(title: "Pepper")
cucumber = Category.create(title: "Cucumber")


cucumber.items.create(name: "Katrina", description: "Productive and tasty mid-sized snacking cucumber.", price: 4.99, unit_measurement: "single", days_to_maturity: 14, role: 0, category_id: cucumber.id, image_path: "/cucumber_katrina.jpg")
cucumber.items.create(name: "Corinto", description: "Our earliest, most productive slicer", price: 6.99, unit_measurement: "single", days_to_maturity: 14, role: 0, category_id: cucumber.id, image_path: "/cucumber_corinto.jpg")
cucumber.items.create(name: "Tasty Jade", description: "Delicious long Asian cucumber", price: 2.99, unit_measurement: "single", days_to_maturity: 14, role: 0, category_id: cucumber.id, image_path: "/cucumber_tastyjade.jpg")
cucumber.items.create(name: "Diva", description: "Especially flavorful harvested small", price: 1.99, unit_measurement: "single", days_to_maturity: 14, role: 0, category_id: cucumber.id, image_path: "/cucumber_diva.jpg")
cucumber.items.create(name: "Excelsior", description: "Attractive and high-yielding greenhouse pickler with excellent flavor", price: 7.99, unit_measurement: "single", days_to_maturity: 14, role: 0, category_id: cucumber.id, image_path: "/cucumber_excelsior.jpg")


eggplant.items.create(name: "Aretussa", description: "white eggplant with attractive and uniform fruits", price: 3.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: eggplant.id, image_path: "/eggplant_aretussa.jpg" )
eggplant.items.create(name: "Angela", description: "High-yielding striped Italian type, strong plants for the greenhouse", price: 3.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: eggplant.id, image_path: "/eggplant_angela.jpg" )
eggplant.items.create(name: "Jaylo", description: "Vigorous Black Italian type with high yields for greenhouse cropping", price: 3.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: eggplant.id, image_path: "/eggplant_jaylo.jpg" )


tomato.items.create(name: "French Heritage", description: "French hybrid-heirloom types with the exceptional flavor of Provence", price: 2.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: tomato.id, image_path: "/tomato_french_heritage.jpg" )
tomato.items.create(name: "Sakura", description: "Early, delicious and attractive cherry ", price: 1.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: tomato.id, image_path: "/tomato_sakura.jpg")
tomato.items.create(name: "Bigdena", description: "large fruit with very good flavor", price: 3.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: tomato.id, image_path: "/tomato_bigdena.jpg" )
tomato.items.create(name: "Granadero", description: "Our most prolific plum with very good flavo", price: 1.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: tomato.id, image_path: "/tomato_grandero.jpg" )
tomato.items.create(name: "Tiren", description: "Early, classic San Marzano shape", price: 2.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: tomato.id, image_path: "/tomato_tiren.jpg" )

lettuce.items.create(name: "Mini Romaine", description: "Three minis in contrasting colors for an attractive presentation", price: 2.99, unit_measurement: "head", days_to_maturity: 12, role: 0, category_id: lettuce.id, image_path: "/lettuce_mini_head_romaines_set.jpg" )
lettuce.items.create(name: "Breen", description: "Early producer of truly compact mini heads with bronze-red color", price: 1.99, unit_measurement: "head", days_to_maturity: 12, role: 0, category_id: lettuce.id, image_path: "/lettuce_breen.jpg" )
lettuce.items.create(name: "Green Butter", description: "Dense rosette heads with buttery flavor and attractive, supple leaves.", price: 3.99, unit_measurement: "head", days_to_maturity: 12, role: 0, category_id: lettuce.id, image_path: "/lettuce_green_butter.jpg" )
lettuce.items.create(name: "Dragoon", description: "Compact and uniform mini green romaine with excellent, crisp texture.", price: 1.99, unit_measurement: "head", days_to_maturity: 12, role: 0, category_id: lettuce.id, image_path: "/lettuce_dragoon.jpg" )
lettuce.items.create(name: "Truchas", description: "Compact, filled-out mini heads that are dark-red even in the North.", price: 2.99, unit_measurement: "head", days_to_maturity: 12, role: 0, category_id: lettuce.id, image_path: "/lettuce_truchas.jpg" )

pepper.items.create(name: "Sympathy", description: "Attractive blocky bell", price: 2.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: pepper.id, image_path: "/pepper_sympathy.jpg" )
pepper.items.create(name: "Sprinter", description: "Beautiful blocky bell", price: 1.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: pepper.id, image_path: "/pepper_sprinter.jpg" )
pepper.items.create(name: "Moonset", description: "Lovely, blocky bell", price: 3.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: pepper.id, image_path: "/pepper_moonset.jpg" )
pepper.items.create(name: "Orangela", description: "Glossy, blocky bell", price: 1.99, unit_measurement: "single", days_to_maturity: 12, role: 0, category_id: pepper.id, image_path: "/pepper_orangela.jpg" )
