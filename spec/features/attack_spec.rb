require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = Battle

feature "Attack P2" do
  scenario "player 1 attacks player 2" do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content "Louis attacked Jihin!"
  end
end
