require 'pg'

feature 'viewing listing' do
  scenario 'user can see multiple lisings on MakersBnB' do

    connection = PG.connect(dbname: 'MakersBnB_Test')

    # Add test data
    connection.exec("INSERT INTO listings (name, description, price) VALUES ('The Turtle Suite', 'the dreamiest beachfront view', 250 );")
    connection.exec("INSERT INTO listings (name, description, price) VALUES ('The Garden Suite', 'beutiful ensuite with forest views in paradise', 300 );")
    connection.exec("INSERT INTO listings (name, description, price) VALUES ('Romantic Suite', 'relax and lie in bed as morning light filters in through the vaulted ceiling skylights', 300);")
      

    visit('/')
    click_link('Listings')

    byebug

    expect(page).to have_content('The Turtle Suite', 'the dreamiest beachfront view', 250 )
    expect(page).to have_content('The Garden Suite', 'beutiful ensuite with forest views in paradise', 300 )
    expect(page).to have_content('Romantic Suite', 'relax and lie in bed as morning light filters in through the vaulted ceiling skylights', 300)
  end
end