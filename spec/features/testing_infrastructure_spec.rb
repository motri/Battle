
feature 'Testing infrastructure' do
  scenario 'returns page with names' do
    visit('/')
    fill_in :player_1_name, with: 'Unai'
    fill_in :player_2_name, with: 'Sulaiman'
    click_button 'Submit'
    expect(page).to have_content 'Unai vs. Sulaiman'
  end
  scenario 'Shows HP' do
    visit('/')
    fill_in :player_1_name, with: 'Unai'
    fill_in :player_2_name, with: 'Sulaiman'
    click_button 'Submit'
    expect(page).to have_content '100/100HP'
  end
end
