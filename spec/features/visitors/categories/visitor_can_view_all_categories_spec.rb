# require 'rails_helper'
#
# feature "user can see all categories" do
#   scenario "user visits categories index" do
#     item = create(:item)
#     category = create(:category)
#     category2 = create(:category)
#     category.items << item
#     category2.items << item
#     binding.pry
#
#
#
#
#
#     visit "/"
#
#     click_on "Categories"
#
#     expect(current_path).to eq("/categories")
#
#     expect(page).to have_link("#{Category.first.title}")
#     expect(page).to have_link("#{Category.last.title}")
#
#   end
# end
