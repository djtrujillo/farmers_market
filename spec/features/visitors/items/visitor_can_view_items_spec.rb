require 'rails_helper'

feature "user can view items" do
  scenario "as a user visiting the dashboard" do
    item1 = create(:item)
    item2 = create(:item)
    item3 = create(:item)

    visit "/"

    click_on "View Items"

    expect(current_path).to eq("/items")

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.description)
    expect(page).to have_content(item1.price)
    expect(page).to have_content(item1.unit_measurement)

    expect(page).to have_content(item2.name)
    expect(page).to have_content(item2.description)
    expect(page).to have_content(item2.price)
    expect(page).to have_content(item2.unit_measurement)


    expect(page).to have_content(item3.name)
    expect(page).to have_content(item3.description)
    expect(page).to have_content(item3.price)
    expect(page).to have_content(item3.unit_measurement)
  end
end
