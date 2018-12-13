feature 'Attack' do
  scenario 'Attacking player 2' do
    visit ('/')
    sign_in_and_play
    click_button "Enter the Arena"
    click_button "Attack!"
    expect(page).to have_content "You have attacked your enemy!"
  end
end
