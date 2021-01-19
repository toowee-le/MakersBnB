feature 'viewing listing' do
  scenario 'user can see multiple lisings on MakersBnB' do
    visit('/')
    click_link('Listings')

    expect(page).to have_content('The Turtle Suite')
    expect(page).to have_content('The Garden Suite')
  end
end

