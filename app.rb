require 'sinatra/base'
require './lib/listing'

class MakersBnB < Sinatra::Base
 get '/' do
    "Homepage"
    erb :index
 end


get '/spaces' do

    @list_of_spaces = Listing.get_listings

erb :listings
end
    run! if app_file == $0
end
