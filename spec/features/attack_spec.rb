require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = Battle

feature "Attack P2" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play
    attack
    expect(page).to have_content "Louis attacked Jihin!"
  end

  scenario 'attack reduces P2 health by 10' do
    sign_in_and_play
    attack
    continue
    expect(page).to have_content "Player 2 HP: 90"
  end
end
