class MoviesController < ApplicationController
  def index
    @api_key = api_key
    @movies_resp = HTTP.get("https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1&api_key=#{@api_key}").body.to_s
    @movies_response_json = JSON.parse(@movies_resp)
    @movies = @movies_response_json["results"]
  end
  
  def show
    tmdb_movie_id = params[:id]
    @found_movie = Movie.find_by(tmdb_id: tmdb_movie_id)
    if !@found_movie
      @api_key = api_key
      @movie_resp = HTTP.get("https://api.themoviedb.org/3/movie/#{tmdb_movie_id}?language=en-US&api_key=#{@api_key}").body.to_s
      @found_movie = JSON.parse(@movie_resp)
      formatted_movie = {
        original_title: @found_movie["original_title"],
        overview: @found_movie["overview"],
        poster_path: @found_movie["poster_path"],
        runtime: @found_movie["runtime"],
        status: @found_movie["status"],
        imdb_id: 10,
        tmdb_id: @found_movie["id"],
        vote_average: @found_movie["vote_average"],
        vote_count: @found_movie["vote_count"],
        backdrop_path: @found_movie["backdrop_path"],
      }
      Movie.create(formatted_movie)
    end
  end
end
