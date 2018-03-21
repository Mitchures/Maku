$(document).ready(function(){
    $("#submit").click(search);
});

var search = function(){
  $.ajax({
    type: "POST",
    url: $("#film-search").attr("action"),
    dataType: 'json',
    data: $("#film-search").serialize(),
    success: handleJSON
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
    if(bp == null) img = "http://www.saxarchitecten.nl/wp-content/uploads/2015/07/film_camera.png.625x385_q100.png";
    var rd = md[i].table.release_date;
    var date = rd.substring(4, rd.indexOf('?'));
    var genre_list = md[i].table.genres;
    var genres = "";
    for (var j = 0; j < 3; j++) {
      genres += "<span style='margin-left: 4px;' class='badge badge-light'>" + genre_list[j] + "</span>";
    }
    var dom = "<div class='card'><img class='card-img-top img-fluid' src='" + img + "' /><div class='card-body'><h5 class='card-title'>" + md[i].table.original_title + "</h5>" + genres + "</div></div>";
    target.append(dom);
  }
}
