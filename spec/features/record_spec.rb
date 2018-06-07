feature 'Animals board the ark' do
  scenario 'animals can board the ark and a confirmation message is displayed' do
    visit('/')
    fill_in('female_animal', with: 'Capybara_female')
    fill_in('male_animal', with: 'Capybara_male')
    click_button 'Board the ark'
    expect(page).to have_content 'Animals safely stowed in the ark!'
  end
end
