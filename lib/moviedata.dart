class MovieImage{
  String url;
  String title;
  MovieImage({this.url,this.title});
}
class Movie{
  String title;
  MovieImage cover;
  List<MovieImage> images;
  String description;
  String studios;
  Movie({this.title,this.cover,this.description,this.studios});
}

List<Movie> featureMovies = [
  Movie(
    title:"Wonder Woman 1984",
    cover: MovieImage(
      url:"assets/ww1984.jpg",
      title:""),
   description:"",
   studios:"DC"
  ),
  Movie(
    title: "Avenger",
    cover: MovieImage(
      url: "assets/avenger.jpg",
      title: ""),
    description: "",
    studios: "Marvel"
  ),
  Movie(
      title: "GodVsKong",
      cover: MovieImage(
          url: "assets/godkong.jpg",
          title: ""),
      description: "",
      studios: "WB"
  ),
  Movie(
      title: "Loki",
      cover: MovieImage(
          url: "assets/loki.png",
          title: ""),
      description: "",
      studios: "Marvel"
  ),
  Movie(
      title: "Mutants",
      cover: MovieImage(
          url: "assets/mutants.jfif",
          title: ""),
      description: "",
      studios: "Marvel"
  ),
];