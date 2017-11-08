require 'rails_helper'

feature "visitor can create account" do
  scenario "a visitor visits cart page" do
    item = create(:item)

    visit "/items"

    click_on "Add to Basket"

    click_on "Current Basket"

    expect(current_path).to eq(basket_carts_path)

    click_on "Create New Account"

    fill_in "user[first_name]", with: "Danny"

    fill_in "user[last_name]", with: "Trujillo"

    fill_in "user[password]", with: "123"

    click_on "Create Account"

    expect(User.last.first_name).to eq("Danny")
    expect(User.last.last_name).to eq("Trujillo")

  end
end
