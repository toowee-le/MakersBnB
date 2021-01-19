require 'sinatra/base'
require './lib/listing'

require 'erb'

class MakersBnB < Sinatra::Base
    
    get '/' do
        erb :index
      end

    get '/signup' do
        erb :signup
    end

    get '/login' do
        erb :login
    end

    get '/listings' do
      @list_of_spaces = Listing.get_listings
        erb :listings
    end
    
    run! if app_file == $0

end
