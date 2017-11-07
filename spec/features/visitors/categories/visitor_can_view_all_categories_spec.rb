require 'rails_helper'

feature "user can see all categories" do
  scenario "user visits categories index" do
    create_list(:category, 3)

    visit "/"

    click_on "Categories"

    expect(current_path).to eq("/categories")

    expect(page).to have_link("#{Category.first.title}")
    expect(page).to have_link("#{Category.last.title}")

  end
end
