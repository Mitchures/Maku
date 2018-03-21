class SearchController < ApplicationController
  def show
    query = Tmdb::Search.movie(params[:search])
    genre_list = Tmdb::Genre.movie_list
    results = query.results
    results.each do |i|
      i.genres = []
      i.genre_ids.each { |gid| genre_list.each { |gli| i.genres.push(gli.name) unless gid != gli.id } }
    end
    @search = results
  end
end
