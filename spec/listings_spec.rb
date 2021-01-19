require 'listing.rb'

describe Listing do
  describe 'testing interaction database' do
    it '.get_listings'  do
      connection = PG.connect(dbname: 'MakersBnB')
      listing = Listing.get_listings
      
      expect(listing).to include("The Turtle Suite")
      expect(listing).to include("The Garden Suite")
    end
  end
end
