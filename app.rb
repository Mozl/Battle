require 'sinatra'



class Battle < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions

  get '/' do
    "Hello Battle!"
  end
















end
