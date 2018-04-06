def sign_in_and_play
  visit ("/")
  fill_in :name1, with: "Louis"
  fill_in :name2, with: "Jihin"
  click_button "Enter name"
end

def attack
  click_button('Attack')
end

def continue
  click_button('Continue')
end


def attack_player_2(dmg)
  @p2_hp -= dmg
  "#{:name1} attacked #{:name2} for #{dmg} damage!"
end
