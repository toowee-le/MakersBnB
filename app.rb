require 'sinatra/base'

class MakersBnB < Sinatra::Base
    get '/Spaces' do

       list_of_spaces = {:name => "the turtle suite", :description => "the most dreamiest beach house with
        Sea views"}
        erb :listings
    end
    run! if app_file == $0
end
