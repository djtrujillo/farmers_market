require 'rails_helper'

feature "existing user can login" do
  scenario "a visitor logs into account" do
    user = create(:user)

    visit "/"

    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in "user[email]", with: user.email

    fill_in "user[password]", with: user.password

    click_on "Login"

    expect(current_path).to eq("/")

    expect(page).to have_link("Sign out")
  end
end
