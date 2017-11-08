require 'rails_helper'

feature "a user can create basket" do
  scenario  "A user creates a basket" do
    item = create(:item)
    user = create(:user)

    allow_any_instance_of(ApplicationController).to receive(:current_user). and_return(user)

    visit "/items"

    click_on "Add to Basket"

    click_on "Current Basket"

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

  scenario "visitors aren't able to create baskets" do
    item = create(:item)
    user = create(:user)
    basket = create(:basket, user: user)
    basket.items << item

    visit "/items"

    click_on "Add to Basket"

    click_on "Current Basket"

    expect(current_path).to eq(basket_carts_path)

    expect(page).to_not have_content("Create Basket")

    expect(page).to have_link("Login")

    visit "/baskets/#{basket.id}"

    expect(page).to have_content("The page you were looking for doesn't exist.")
  end

end
