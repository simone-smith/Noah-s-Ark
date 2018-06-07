feature 'Animals board the ark' do
  scenario 'I can keep a record of animals' do
    visit('/')
    fill_in('animal_1', with: 'Capybara_female')
    fill_in('animal_2', with: 'Capybara_male')
    expect(page).to have_content 'Animals safely stowed in the ark!'
  end
end
