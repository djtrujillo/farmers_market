require 'rails_helper'

feature "visitor can view nutrition info of categories" do
  scenario "visiting category show page there is nutrition info" do
    category = Category.create(title: "Tomato")

    visit "categories/#{category.id}"

    expect(page).to have_content("Nutrition Info")

    expect(page).to have_content("Serving Quantity")
    expect(page).to have_content("Cholesterol")
    expect(page).to have_content("Sodium")
  end
end
