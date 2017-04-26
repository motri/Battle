
  feature 'Attackind' do
    scenario 'Attacks and wins' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content 'Unai wins!'
      end
    end
