require 'rails_helper'

feature "visitor can visit basket" do
  scenario "visitor adds items then visits current basket" do
    item1 = create(:item)


    visit '/items'

    click_on "Add to Basket"

    click_on "Basket"

    expect(current_path).to eq(baskets_path)

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.price)
    expect(page).to have_content(item1.unit_measurement)

  end
end
