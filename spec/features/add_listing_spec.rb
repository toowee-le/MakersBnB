feature 'adding listings' do
  scenario 'user can add a new listing' do
    visit ('/') 
    visit ('/add_listings')

    fill_in('name', with: 'The Turtle Suite')
    fill_in('price', with: '250')
    fill_in('description', with: 'the dreamiest beachfront view')
    fill_in('available_from', with: '20/01/2020')
    fill_in('available_to', with: '20/03/2020')

    expect(page).to have_content('The Turtle Suite')
    expect(page).to have_content('£250')
    expect(page).to have_content('the dreamiest beachfront view')
    expect(page).to have_content('20/01/2020')
    expect(page).to have_content('20/03/2020')

  end
end