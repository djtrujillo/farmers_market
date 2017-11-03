require 'rails_helper'

feature "user can add items to cart" do
  scenario "as a user visiting items page" do
    item1 = create(:item)

    visit "/items/#{item1.id}"

    click_on "Add to Basket"

    expect(current_path).to eq("/cart")

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.description)
    expect(page).to have_content(item1.price)
    expect(page).to have_content(item1.unit_measurement)

    expect(page).to have_link("checkout")
  end
end
