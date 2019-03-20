require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
    
  end
  post '/result' do
    @user_id = params[:video_id]
    @user_url = params[:video_url]
    @user_player = params[:player]
    @user_player = Video.new(@video_url)
    @user_player.get_video
    erb :result
  end
end
