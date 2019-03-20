require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
    
  end
  post '/result' do
    erb :result
    #@user_video_id = params[:video_id]
    #@user_player = params[:player]
  end
end
