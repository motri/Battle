
feature 'Testing infrastructure' do
  scenario 'returns page with names' do
    sign_in_and_play
    expect(page).to have_content 'Unai vs. Sulaiman'
  end
  scenario 'Shows HP' do
    sign_in_and_play
    expect(page).to have_content '100/100HP'
  end
end
