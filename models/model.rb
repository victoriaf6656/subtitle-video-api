require 'sinatra'
require 'json'
#https://github.com/bo-oz/vimeo_me2
#https://github.com/vimeo/player.js/
require 'net/http'

url = "https://player.vimeo.com/api/player.js"
uri = URI(url)
response = Net::HTTP.get(uri)
JSON.parse(response)

class Video
   attr_reader :video_id, :player, :video_name
   def initialize(video_id,player,video_name)
      @video_id = video_id
      @player = player
      @video_name = video_name
   end
   #Embed a video url
   #convert video url link to video mp4
   def get_video
      
       #begin
        # fetcher = Vimeo::Fetcher.new
         #player = fetcher.search(@video_id,@player)
       #rescue
        # @player = ["Sorry,the embeded code for this video is not valid!"]
    #end
   end
   #Use API and get subtitles, according to video
   def get_subtitles
      begin
         fetcher = Vimeo::Fetcher.new
         subtitles = fetcher.search(@video_id,@player)
       rescue
         @subtitles = ["Sorry,no subtitles found."]
    end
   end
end
#static.3playmedia.com/files/:video_id/captions.:format?apikey=:api_key&usevideoid=1
#https://github.com/matcornic/subify
#https://www.programmableweb.com/category/subtitles/api