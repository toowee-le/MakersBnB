require 'sinatra/base'

class MakersBnB < Sinatra::Base
    get '/Spaces' do
        "Hello Spaces!"
    end
    run! if app_file == $0
end
