class MovieDetailsController < ApplicationController
  layout "movie_details"

  def show
    @film = Tmdb::Movie.detail(params[:id])
    @back_url = session[:my_previous_url]
  end
end
