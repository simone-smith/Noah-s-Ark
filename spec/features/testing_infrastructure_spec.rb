feature "testing infrastructure" do
  scenario "can run homepage" do
    visit "/"
    expect(page).to have_content "Welcome to the end of the world as you know it"
  end
end
