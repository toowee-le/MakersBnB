require 'pg'

class Listing
  def self.get_listings 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'MakersBnB_Test')
    else
      connection = PG.connect(dbname: 'MakersBnB')
    end

    result = connection.exec("SELECT * FROM listings;" )
    result.map do |hash| hash['name']
    #{ name: hash["name"], description: hash["description"], price: hash["price"]}
    end
  end
end