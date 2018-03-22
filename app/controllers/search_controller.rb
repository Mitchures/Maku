class SearchController < ApplicationController
  def show
    query = Tmdb::Search.movie(params[:movie])
    genre_list = Tmdb::Genre.movie_list
    img_url_path = "https://image.tmdb.org/t/p/w500/"
    no_img_url_path = "http://www.saxarchitecten.nl/wp-content/uploads/2015/07/film_camera.png.625x385_q100.png"
    ytv_url = "https://www.youtube.com/watch?v="
    results = query.results
    results.each do |i|
      i.genres = []
      i.trailer_urls = []
      unless i.video
        i.video_data = Tmdb::Movie.videos(i.id)
        i.video_data.find { |v| i.trailer_urls.push(ytv_url + v.key) unless v.type != "Trailer"}
      end
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
