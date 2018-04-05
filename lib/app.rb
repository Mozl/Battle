require 'sinatra'

class Battle < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:play)
  end
















end
