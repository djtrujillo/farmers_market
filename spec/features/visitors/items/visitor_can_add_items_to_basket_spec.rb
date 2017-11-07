require 'rails_helper'

feature "user can add items to cart" do
  scenario "as a user visiting items page" do
    category = create(:category)
    item = create(:item, category_id: category.id)

    visit "/items"

    click_on "Add to Basket"

    expect(page).to have_content("You now have 1 #{item.name}")
  end

  scenario "the message correctly increments for multiple items" do
    item = create(:item)

    visit "/items"

    click_on "Add to Basket"

    expect(page).to have_content("You now have 1 #{item.name}")

    click_on "Add to Basket"

    expect(page).to have_content("You now have 2 #{item.name}")
  end

  scenario "the message correctly increments for multiple items" do
    item = create(:item)

    visit "/items"

    click_on item.name

    expect(current_path).to eq(item_path(item))

    click_on "Add to Basket"

    expect(page).to have_content("You now have 1 #{item.name}")
  end



end
