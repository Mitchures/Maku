# $ ->
#     $("#submit").click search
#
# search = () ->
#   $.ajax
#     type: "POST"
#     url: $("#film-search").attr "action"
#     dataType: 'json'
#     data: $("#film-search").serialize
#     success: handleJSON
#   false
#
#
# handleJSON = (d) ->
#   console.log d
#   md = d.table.results
#   target = $(".search-results-container")
#   target.empty
#   for(i = 0; i < md.length; i++)
#     bp = md[i].table.backdrop_path;
#     img = "https://image.tmdb.org/t/p/w500/" + bp;
#     if(bp == null) img = "http://www.saxarchitecten.nl/wp-content/uploads/2015/07/film_camera.png.625x385_q100.png";
#     var rd = md[i].table.release_date;
#     var date = rd.substring(4, rd.indexOf('?'));
#     var dom = "<div class='card'><img class='card-img-top img-fluid' src='" + img + "' /><div class='card-body'><h5 class='card-title'>" + md[i].table.original_title + "</h5><h6 class='card-subtitle mb-2 text-muted'>" + date + "</h6><p class='card-text'>" + md[i].table.overview + "</p></div></div>";
#     target.append(dom);


# http://coffeescript.org/#top
# https://css-tricks.com/jquery-coffeescript/
