
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    fill_in :player_1_name, with: 'Unai'
    fill_in :player_2_name, with: 'Sulaiman'
    click_button 'Submit'
    expect(page).to have_content 'Unai vs. Sulaiman'
  end
end
