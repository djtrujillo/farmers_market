require 'rails_helper'

feature "user can view previously made baskets" do
  scenario "user visits baskets index" do
    user = create(:user)
    basket1 = create(:basket, user: user)
    basket2 = create(:basket, user: user)
    items1 = create_list(:item,3)
    items2 = create_list(:item,3)
    basket1.items << items1
    basket2.items << items2

    allow_any_instance_of(ApplicationController).to receive(:current_user). and_return(user)
    visit "/items"

    click_on "Saved Baskets"

    expect(current_path).to eq(baskets_path)

    expect(page).to have_content(basket1.items.first.name)
    expect(page).to have_content(basket1.items.last.name)

    expect(page).to have_content(basket2.items.first.name)
    expect(page).to have_content(basket2.items.last.name)
  end
end
