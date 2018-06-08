feature 'Animals have diseases.' do
  scenario 'I need to record which animals have which diseases' do
    add_aardwolves
    # We need to write this test so that it can add the disease to the relevant animal pair.
    # We are trying to use '#id' from line 5 in result.erb, however, are currently unable
    # to work out how to link the test to that identifier. 
    within(:css, "li#Aardwolf_female") do
      fill_in('disease', with: 'rabies')
    end
    click_button 'Record disease'
    expect(page).to have_content 'Disease recorded!'
  end
end
