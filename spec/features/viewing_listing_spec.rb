require 'pg'

feature 'viewing listing' do
  scenario 'user can see multiple lisings on MakersBnB' do

    connection = PG.connect(dbname: 'MakersBnB_Test')

    # Add test data
    connection.exec("INSERT INTO listings (name) VALUES ('The Turtle Suite');")
    connection.exec("INSERT INTO listings (name) VALUES ('The Garden Suite');")

    visit('/')
    click_link('Listings')

    expect(page).to have_content('The Turtle Suite')
    expect(page).to have_content('The Garden Suite')
  end
end