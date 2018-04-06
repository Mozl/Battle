require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = Battle

feature "Enter player names" do
  scenario "submit name and see the name shown on the page" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Louis", "Player 2: Jihin"
  end
end

feature "Show hit points" do
  scenario "submit name and see name and hit points on page" do
    sign_in_and_play
    expect(page).to have_content "Player 1 HP: 100", "Player 2 HP: 100"
  end
end
