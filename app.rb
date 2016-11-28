require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions

  somekeyhash = Hash.new

    get '/' do
      'Hello!'
    end

    get '/set' do
      somekeyhash = params
      puts somekeyhash
      # @somekey = params[:somekey]
      # puts @somekey
      erb :form
    end

    get '/get' do
      @key = params[:key]
      puts somekeyhash.fetch(@key)
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
