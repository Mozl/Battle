require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = Battle

feature "Enter player names" do
  scenario "submit name and see the name shown on the page" do
    visit("/")
    fill_in :name1, with: "Louis"
    fill_in :name2, with: "Jihin"
    click_button "Enter name"
    expect(page).to have_content "Player 1: Louis Player 2: Jihin"
  end
end
