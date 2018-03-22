class SearchController < ApplicationController
  def show
    query = Tmdb::Search.movie(params[:search])
    genre_list = Tmdb::Genre.movie_list
    img_url_path = "https://image.tmdb.org/t/p/w500/"
    no_img_url_path = "http://www.saxarchitecten.nl/wp-content/uploads/2015/07/film_camera.png.625x385_q100.png"
    results = query.results
    results.each do |i|
      i.genres = []
      i.genre_ids.each { |gid| genre_list.each { |gli| i.genres.push(gli.name) unless gid != gli.id } }
      unless i.backdrop_path.nil?
        i.backdrop_path = img_url_path + i.backdrop_path
      else
        unless i.poster_path.nil?
          i.backdrop_path = img_url_path + i.poster_path
        else
          i.backdrop_path = no_img_url_path
        end
      end

    end
    @search = results
  end
end
