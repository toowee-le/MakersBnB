require 'pg'

p "Setting up test database..."

connection = PG.connect(dbname: 'MakersBnB_Test')

# Clear the bookmarks table
connection.exec("TRUNCATE listings;")