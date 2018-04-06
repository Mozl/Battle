require 'sinatra'
require_relative 'player'

class Battle < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'key'
  end
  set :root, File.dirname(__FILE__)
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    p $player1 = Player.new(params[:'name1'])
    p $player2 = Player.new(params[:'name2'])
    p params
    p session
    redirect '/play'
  end


  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb :play
  end

  get '/attack' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb :attack
  end

















end
