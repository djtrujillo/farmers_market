require 'rails_helper'

feature "a visitor can create basket" do
  scenario  "A visitor creates a basket" do
    item = create(:item)
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user). and_return(user)

    visit "/items"

    click_on "Add to Basket"

    click_on "Basket"

    expect(current_path).to eq(basket_carts_path)

    click_on "Create Basket"

    expect(current_path).to eq(basket_path(Basket.last))

    click_on "Add to Cart"

    expect(current_path).to eq(carts_path)
    expect(Basket.count).to eq(1)
    expect(page).to have_link(Basket.last.id)
    expect(page).to have_content(item.name)
    expect(page).to have_content(item.price)
  end
end
