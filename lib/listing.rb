require 'pg'

class Listing
  def self.get_listings 
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'MakersBnB_Test')
    else
      connection = PG.connect(dbname: 'MakersBnB')
    end

    result = connection.exec("SELECT * FROM listings;" )
    result.map do |list|
      { name: list["name"], price: list["price"], available_from: list["available_from"], available_to: list["available_to"], description: list["description"]}
    end
  end

  def self.create(name, price, description, available_from, available_to)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'MakersBnB_Test')
    else
      connection = PG.connect(dbname: 'MakersBnB')
    end

    connection.exec("INSERT INTO listings (name, description, price, available_from, available_to) VALUES ('#{name}', '#{description}', #{price}, '#{available_from}', '#{available_to}');")
  end
end