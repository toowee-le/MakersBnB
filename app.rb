require 'sinatra/base'
require 'erb'

class MakersBnB < Sinatra::Base
    
    get '/' do
        erb :index
      end

    get 'signup' do
        erb :signup
    end
    
    get '/spaces' do
        "Hello Spaces!"
    end
    
    run! if app_file == $0

end
