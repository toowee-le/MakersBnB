require 'sinatra/base'

class MakersBnB < Sinatra::Base
 get '/' do
    "Homepage"
    erb :index
 end


get '/spaces' do

    @list_of_spaces = ["The Turtle Suite"]

erb :listings
end
    run! if app_file == $0
end
