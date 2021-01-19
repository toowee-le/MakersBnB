require 'pg'

class Listing
 def self.get_listings 
      connection = PG.connect(dbname: 'MakersBnB')
      result = connection.exec("SELECT * FROM listings;" )
      result.map do |hash|
      { name: hash["name"], description: hash["description"], price: hash["price"]}
    end
 end


end