require 'rails_helper'

feature "visitor can visit basket" do
  scenario "visitor adds items then visits current basket" do
    category = create(:category)
    item1 = create(:item, category_id: category.id)

    visit '/items'

    click_on "Add to Basket"

    click_on "Basket"

    expect(current_path).to eq(basket_carts_path)

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item1.price)
    expect(page).to have_content(item1.unit_measurement)

  end
end
