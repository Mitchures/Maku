$(document).ready(function(){
    $("#submit").click(search);
});

var search = function(){
  $.ajax({
    type: "POST",
    url: $("#film-search").attr("action"),
    data: $("#film-search").serialize(),
    success: function(d){
      handleJSON(d);
    }
  });
  return false;
}

function handleJSON(d){
  console.log(d);
  var md = d.table.results;
  var target = $(".search-results-container");
  target.empty();
  for (var i = 0; i < md.length; i++) {
    var bp = md[i].table.backdrop_path;
    var img = "https://image.tmdb.org/t/p/w500/" + bp;
    if(bp == null) img = "https://image.tmdb.org/t/p/w500/" + md[i].table.poster_path;
    if(bp == null && md[i].table.poster_path == null) img = "http://www.saxarchitecten.nl/wp-content/uploads/2015/07/film_camera.png.625x385_q100.png";
    var rd = md[i].table.release_date;
    var date = rd.substring(4, rd.indexOf('?'));
    var genre_list = md[i].table.genres;
    var genres = "";
    gll = 3;
    if(genre_list.length < 3) gll = genre_list.length;
    for (var j = 0; j < gll; j++) {
      genres += "<span style='margin-left: 4px;' class='badge badge-light'>" + genre_list[j] + "</span>";
    }
    var dom = "<div class='card'><img class='card-img-top img-fluid' src='" + img + "' /><div class='card-body'><h5 class='card-title'>" + md[i].table.title + "</h5><h6 class='card-subtitle mb-2 text-muted'>" + date + "</h6><p class='card-text'>" + genres + "</p><p class='card-text'><small class='text-muted'>" + md[i].table.overview + "</small></p></div><div class='card-actions'><a class='btn btn-outline-primary' href='/movie_details/show?id=" + md[i].table.id + "'><i class='material-icons'>play_arrow</i></a><a class='btn btn-outline-primary' href='#'><i class='material-icons'>playlist_add</i></a></div></div>";
    target.append(dom);
  }
}
