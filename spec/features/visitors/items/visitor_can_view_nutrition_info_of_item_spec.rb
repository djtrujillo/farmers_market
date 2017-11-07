# require 'rails_helper'
#
# feature "visitor can view nutrition info of items" do
#   scenario "visiting item show page there is nutrition info" do
#     item = Item.create(name: "Tomato", description: "description", category: "vegetable", price: 4.99, unit_measurement: "lbs", days_to_maturity: 14, role: 0)
#
#     visit "items/#{item.id}"
#
#     expect(page).to have_content("Proximates")
#     expect(page).to have_content("Minerals")
#     expect(page).to have_content("Vitamins")
#   end
# end
