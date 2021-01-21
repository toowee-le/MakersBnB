feature 'view homepage' do
  scenario 'user can see nav links' do
    visit ('/') 

    expect(page).to have_link("Home")
    expect(page).to have_link("Add Listings")
    expect(page).to have_link("Listings")
  end
end