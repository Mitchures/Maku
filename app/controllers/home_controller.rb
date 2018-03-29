class HomeController < ApplicationController

  def index
    movies = Tmdb::Movie.now_playing
    results = movies.results
    # results.each do |m|
    #   m.cast = Tmdb::Movie.cast(m.id, limit: 10)
    # end
    @results = results
  end

end
