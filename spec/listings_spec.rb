require 'listing.rb'

describe Listing do
  describe 'testing interaction database' do
    it '.get_listings' do
      connection = PG.connect(dbname: 'MakersBnB_Test')

      # Add test data
      connection.exec("INSERT INTO listings (name, description, price) VALUES ('The Turtle Suite', 'the dreamiest beachfront view', 250 );")
      connection.exec("INSERT INTO listings (name, description, price) VALUES ('The Garden Suite', 'beutiful ensuite with forest views in paradise', 300 );")
      connection.exec("INSERT INTO listings (name, description, price) VALUES ('Romantic Suite', 'relax and lie in bed as morning light filters in through the vaulted ceiling skylights', 300);")
      

      listing = Listing.get_listings
      
      expect(listing).to include(name: 'The Turtle Suite', description: 'the dreamiest beachfront view', price: "250")
      expect(listing).to include(name: 'The Garden Suite', description: 'beutiful ensuite with forest views in paradise', price: "300")
      expect(listing).to include(name: 'Romantic Suite', description: 'relax and lie in bed as morning light filters in through the vaulted ceiling skylights', price: "300")
    end
  end
end
