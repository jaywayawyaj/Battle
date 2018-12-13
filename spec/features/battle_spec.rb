# require "capybara/rspec"
# require_relative "../../app"

feature "Player names" do
  scenario "Can enter player names" do
    visit("/")
    expect(page).to have_content "Enter player names"
    sign_in_and_play
    expect(page).to have_content "Welcome. Sub-Zero vs Scorpion"
  end
end

feature "Hitpoints" do
  scenario "View player hitpoints" do
    visit("/")
    sign_in_and_play
    click_button "Enter the Arena"
    expect(page).to have_content "Sub-Zero - 100HP : Scorpion - 100HP"
  end
end
