class MovieDetailsController < ApplicationController
  layout "movie_details"

  def show
    @film = Tmdb::Movie.detail(params[:id])
  end
end
