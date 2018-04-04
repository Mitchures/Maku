class HomeController < ApplicationController

  def index
    movies = Tmdb::Movie.now_playing
    results = movies.results
    @results = results
  end

end
