def sign_in_and_play
  fill_in "Player_1", with: "Sub-Zero"
  fill_in "Player_2", with: "Scorpion"
  click_button "Start Game"
end
