require "capybara/rspec"
require "./lib/app"
require "./lib/player"

Capybara.app = Battle

describe Player do

  feature "returns class name" do
    scenario "tests Player class returns its own name" do
      player = Player.new("Louis")
      expect(player.name).to eq "Louis"
    end
  end






end
