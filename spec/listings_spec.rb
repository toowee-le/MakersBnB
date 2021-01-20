require 'listing.rb'

describe Listing do
  describe 'testing interaction database' do
    it '.get_listings' do
      connection = PG.connect(dbname: 'MakersBnB_Test')

      # Add test data
      connection.exec("INSERT INTO listings (name) VALUES ('The Turtle Suite');")
      connection.exec("INSERT INTO listings (name) VALUES ('The Garden Suite');")

      listing = Listing.get_listings
      
      expect(listing).to include("The Turtle Suite")
      expect(listing).to include("The Garden Suite")
    end
  end
end
