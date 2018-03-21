class SearchController < ApplicationController
  def search
    @search = Tmdb::Search.movie(params[:search])
    genre_list = Tmdb::Genre.movie_list
    @search.results.each do |i|
      i.genres = []
      i.genre_ids.each { |gid| genre_list.each { |gli| i.genres.push(gli.name) unless gid != gli.id } }
    end
    render :json => @search
  end
end
