require 'rails_helper'

feature "user can view items" do
  scenario "as a user visiting items page" do
    category = create(:category)
    item1 = create(:item, category_id: category.id)

    visit "/items"

    click_on "#{item1.name}"

    expect(current_path).to eq("/items/#{item1.id}")

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.description)
    expect(page).to have_content(item1.price)
    expect(page).to have_content(item1.unit_measurement)
  end
end
