require 'sinatra'
require 'json'

#https://github.com/vimeo/player.js/

require 'net/http'
URL=("https://player.vimeo.com/api/player.js")



class Video
   attr_reader :video_id, :player, :video_name, :video_url
   def initialize(video_url)
      @video_url = video_url
      @video_id = video_id # "https://player.vimeo.com/<%=@video_id%>"
      @player = player
   end
   def get_video
       begin
         fetcher = Vimeo::Fetcher.new
         #search for the url of the the video
         player = fetcher.search(@video_url)
         
         @player = video_url.player
       rescue
         @player = ["Sorry,the embeded code for this video is not valid!"]
    end
   end
   #Use API and get subtitles, according to video
end
#static.3playmedia.com/files/:video_id/captions.:format?apikey=:api_key&usevideoid=1
#https://github.com/matcornic/subify
#https://www.programmableweb.com/category/subtitles/api

#vimeo client ID
#bc9fa207ce8a4c7c74b31f711884f52ff17660cb
#vimeo client secrets
#oRo0HgOJIdysaxBFYhd7w/z97/Q/xSnGNo8KCBg0k3Mez3u/pvnPQWHQgrwYYNUAoM2clOuGKmpRQMoMZ08xOp7G2DT2J4B3qtq1Yp7KrVMxYOzC4XHc5E7vWh8KK99w
