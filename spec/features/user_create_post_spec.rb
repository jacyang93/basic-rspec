require "rails_helper"

feature "User can create post" do
  scenario "successfully" do
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: "example@gmail.com"
    fill_in "Password", with: "123123"
    click_on "Sign up"

    # fill_in "Email", with: "example@gmail.com"
    # fill_in "Password", with: "123123"
    # click_on "Sign in"

    fill_in "post[title]", with: "first title"
    fill_in "post[description]", with: "hi"
    click_on "Submit"

    expect(page).to have_content('first title')
    expect(page).to have_content('hi')
  end
end
