class HomeController < ApplicationController

  def index
    popular = Tmdb::Movie.popular
    genre_list = Tmdb::Genre.movie_list
    pop_results = popular.results
    pop_results.each do |i|
      i.genres = []
      i.genre_ids.each { |gid| genre_list.each { |gli| i.genres.push(gli.name) unless gid != gli.id } }
    end
    @popular = pop_results
  end

end
