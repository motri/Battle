
feature 'Testing infrastructure' do
  scenario 'returns page with names' do
    sign_in_and_play
    expect(page).to have_content 'Unai vs. Sulaiman'
  end
  scenario 'Shows HP' do
    sign_in_and_play
    expect(page).to have_content '100/100HP'
  end
  scenario 'Attacks and wins' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Warrior 1 wins!'
  end
end
