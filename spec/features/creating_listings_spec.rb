# require 'add_listing.erb'

feature 'Adding a new listing' do
    scenario 'A user can add a listing to listings page' do
      visit('/')
      visit('/add_listings')
      fill_in('name', with: 'The Turtle Suite')
      fill_in('description', with: 'the dreamiest beachfront views')
      fill_in('available_from', with: '2020-01-01')
      fill_in('available_to', with: '2020-05-01')
      fill_in('price', with: '250')
      click_button('List my space!')
      save_and_open_page
      expect(page).to have_content('The Turtle Suite')
      expect(page).to have_content('the dreamiest beachfront views')
      expect(page).to have_content('250')
    end
  end
