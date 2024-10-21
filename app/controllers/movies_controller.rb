class MoviesController < ApplicationController
  def index
    @api_key = api_key
    @movies_resp = HTTP.get("https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1&api_key=#{@api_key}").body.to_s
    @movies_response_json = JSON.parse(@movies_resp)
    @movies = @movies_response_json["results"]
  end
  
  def show
  end
end
