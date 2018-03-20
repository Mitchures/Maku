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
    var dom = "<div class='card'><img class='card-img-top img-fluid' src='" + img + "' /><div class='card-body'><h5 class='card-title'>" + md[i].table.original_title + "</h5><h6 class='card-subtitle mb-2 text-muted'>" + md[i].table.release_date + "</h6><p class='card-text'>" + md[i].table.overview + "</p></div></div>";
    target.append(dom);
  }
}
