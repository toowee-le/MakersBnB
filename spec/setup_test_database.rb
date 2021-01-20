require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'MakersBnB_Test')

# Clear the listings table
connection.exec("TRUNCATE listings;")