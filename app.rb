require 'sinatra/base'
require './lib/listing'
require 'pg'

require 'erb'

class MakersBnB < Sinatra::Base
    
    get '/' do
      erb :index
    end

    get '/listings' do
      @list_of_spaces = Listing.get_listings
      erb :listings
    end

    get '/add_listings' do
      erb :add_listings
    end

    post '/listings' do
      p params['name']

      name = params['name']
      price = params['price']
      description = params['description']
      available_from = params['available_from']
      available_to = params['available_to']
      Listing.create(name, price, description, available_from, available_to)
      redirect '/listings' 
  end
    
  run! if app_file == $0

end
