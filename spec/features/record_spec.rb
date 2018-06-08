feature 'Animals board the ark;' do
  scenario 'animals can board the ark and a confirmation message is displayed' do
    add_capybaras
    expect(page).to have_content 'Animals safely stowed in the ark!'
  end

  scenario 'verify that multiple pairs can board the ark' do
    add_giraffes
    click_button 'Add another pair'
    and_add_rabbits
    expect(page).to have_content "Giraffe_female"
    expect(page).to have_content "Giraffe_male"
    expect(page).to have_content "Rabbit_female"
    expect(page).to have_content "Rabbit_male"
  end
end
