require 'spec_helper'

require_relative '../../app'

describe Battle, type: :feature do
  scenario 'players entered Nigel and Peter' do
    sign_in_and_play
    expect(page).to have_content 'Nigel' && 'Peter'
  end

  scenario "player1 can see player2's hit points" do
    sign_in_and_play
    expect(page).to have_content Player::HP_DEFAULT
  end

  scenario 'player1 attacks player2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'attacked'
  end

  scenario 'loser message when one players hp is reaches zero' do
    sign_in_and_play
    srand(2)
    15.times { click_button 'Attack' }
    expect(page).to have_content ' Lost!'
  end

  scenario 'when single player mode' do
    single_player_sign_in_and_play
    expect(page).to have_content 'Unai' && 'Computer'
  end
end
