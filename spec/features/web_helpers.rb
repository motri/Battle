
def sign_in_and_play
  visit '/'
  fill_in :player1, with: 'Nigel'
  fill_in :player2, with: 'Peter'
  click_button 'Submit'
end

def single_player_sign_in_and_play
  visit '/'
  fill_in :player1, with: 'Unai'
  fill_in :player2, with: ''
  click_button 'Submit'
end
