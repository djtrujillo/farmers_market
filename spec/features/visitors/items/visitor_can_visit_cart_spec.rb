require 'rails_helper'

feature "visitor can visit cart" do
  scenario "visitor adds items then visits cart" do
    item1 = create(:item)


    visit '/items'

    click_on "Add to Basket"

    click_on "Basket"

    expect(current_path).to eq(carts_path)

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.price)
    expect(page).to have_content(item1.unit_measurement)

  end
end
