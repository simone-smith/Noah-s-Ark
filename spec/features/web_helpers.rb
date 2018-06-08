def add_capybaras
  visit('/')
  fill_in('female_animal', with: 'Capybara_female')
  fill_in('male_animal', with: 'Capybara_male')
  click_button 'Board the ark'
end

def add_giraffes
  visit('/')
  fill_in('female_animal', with: 'Giraffe_female')
  fill_in('male_animal', with: 'Giraffe_male')
  click_button 'Board the ark'
end

def and_add_rabbits
  fill_in('female_animal', with: 'Rabbit_female')
  fill_in('male_animal', with: 'Rabbit_male')
  click_button 'Board the ark'
end
