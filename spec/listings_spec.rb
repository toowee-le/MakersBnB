require 'listing.rb'

describe Listing do
  describe 'testing interaction database' do
    it '.get_listings' do
      connection = PG.connect(dbname: 'MakersBnB_Test')

      # Add test data
      connection.exec("INSERT INTO listings (name, description, price, available_from, available_to) VALUES ('The Turtle Suite', 'the dreamiest beachfront views', 250, '2020-01-01', '2020-05-01' );")
      connection.exec("INSERT INTO listings (name, description, price, available_from, available_to) VALUES ('The Garden Suite', 'beutiful ensuite with forest views in paradise', 300, '2020-01-01', '2020-05-01' );")
      connection.exec("INSERT INTO listings (name, description, price, available_from, available_to) VALUES ('Romantic Suite', 'relax and lie in bed as morning light filters in through the vaulted ceiling skylights', 300, '2020-01-01', '2020-05-01');")
      

      listing = Listing.get_listings
      
      expect(listing).to include(name: 'The Turtle Suite', description: 'the dreamiest beachfront views', price: "250", available_from: '2020-01-01', available_to: '2020-05-01' )
      expect(listing).to include(name: 'The Garden Suite', description: 'beutiful ensuite with forest views in paradise', price: "300", available_from: '2020-01-01', available_to: '2020-05-01')
      expect(listing).to include(name: 'Romantic Suite', description: 'relax and lie in bed as morning light filters in through the vaulted ceiling skylights', price: "300", available_from: '2020-01-01', available_to: '2020-05-01')
    end
  end
end
