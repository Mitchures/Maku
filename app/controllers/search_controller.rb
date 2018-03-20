class SearchController < ApplicationController
  def search
    @search = Tmdb::Search.movie(params[:search])
    render :json => @search
  end
end
