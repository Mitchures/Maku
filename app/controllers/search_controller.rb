class SearchController < ApplicationController
  def search
    @search = Tmdb::Search.movie(params[:search], page: 1, language: 'en')
    render :json => @search
  end
end
