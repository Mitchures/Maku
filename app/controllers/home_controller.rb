class HomeController < ApplicationController

  def index
    popular = Tmdb::Movie.popular
    genre_list = Tmdb::Genre.movie_list
    ytv_url = "https://www.youtube.com/watch?v="
    pop_results = popular.results
    pop_results.each do |i|
      i.genres = []
      i.trailer_urls = []
      unless i.video
        i.video_data = Tmdb::Movie.videos(i.id)
        i.video_data.find { |v| i.trailer_urls.push(ytv_url + v.key) unless v.type != "Trailer"}
      end
      i.genre_ids.each { |gid| genre_list.each { |gli| i.genres.push(gli.name) unless gid != gli.id } }
    end
    @popular = pop_results
  end

end
