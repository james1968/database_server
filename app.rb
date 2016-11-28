require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions


    get '/' do
      'Hello!'
    end

    get '/set' do
      erb :form
    end

    post '/set' do
      @key = params[:key]
      @value = params[:value]
      puts "{#{@key}}:{#{@value}}"
      erb :value
    end

    # start the server if ruby file executed directly
    run! if app_file == $0
end
