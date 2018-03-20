class HomeController < ApplicationController

  def index
    popular = Tmdb::Movie.popular(page: 1)
    @popular = popular.results
  end

end
