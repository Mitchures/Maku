class SearchController < ApplicationController
  def search
    input = params[:search]
    @search = Tmdb::Search.movie(input, language: 'en')
    render :json => @search
  end
end
