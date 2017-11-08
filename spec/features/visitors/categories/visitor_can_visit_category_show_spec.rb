require 'rails_helper'

feature "visitor can visit category show page" do
  scenario "from category index" do

    category = Category.create(title: "Tomato")

    item = create(:item, category_id: category.id)
    visit "/categories"

    click_on "#{category.title}"

    expect(current_path).to eq("/categories/#{category.id}")

    expect(page).to have_content(category.title)
    expect(page).to have_content(item.name)
    expect(page).to have_content(item.price)
    expect(page).to have_content(item.unit_measurement)
    expect(page).to have_link("Add to Basket")
  end
end
