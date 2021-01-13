class MovieImage{
  String url;
  String title;
  MovieImage({this.url,this.title});
}
class Movie{
  String title;
  MovieImage coverImage;
  List<MovieImage> images;
  String description;
  String studios;
  Movie({this.title,this.coverImage,this.description,this.studios});
}
List<Movie> movies = [
  Movie(
      title:"Avengement",
      coverImage: MovieImage(
          url:"assets/avengement.jpg",
          title:""),
      description:"",
      studios:"WB"
  ),
  Movie(
      title:"Men In Black (MIB)",
      coverImage: MovieImage(
          url:"assets/mib.jpg",
          title:""),
      description:"",
      studios:"Sony Pictures Releasing"
  ),
  Movie(
      title:"Oblivion",
      coverImage: MovieImage(
          url:"assets/oblivion.jpg",
          title:""),
      description:"",
      studios:"Universal Pictures"
  ),
  Movie(
      title:"Spider-Man",
      coverImage: MovieImage(
          url:"assets/spider.jpg",
          title:""),
      description:"",
      studios:"Marvel"
  ),
  Movie(
      title:"Tenet",
      coverImage: MovieImage(
          url:"assets/tenet.jpg",
          title:""),
      description:"",
      studios:"WB"
  ),

];

List<Movie> movies2 =[
  Movie(
      title:"The Titan",
      coverImage: MovieImage(
          url:"assets/thetitan.jpg",
          title:""),
      description:"",
      studios:"Fox Animation Studios"
  ),
  Movie(
      title:"Valerian",
      coverImage: MovieImage(
          url:"assets/valerian.jpg",
          title:""),
      description:"",
      studios:"EuropaCorp"
  ),
  Movie(
      title:"How It Ends",
      coverImage: MovieImage(
          url:"assets/howitends.jpg",
          title:""),
      description:"",
      studios:"Paul Schiff Productions Sierra/Affinity"
  ),
  Movie(
      title:"What happened To Monday",
      coverImage: MovieImage(
          url:"assets/whm.jpg",
          title:""),
      description:"",
      studios:"SND Films"
  ),
  Movie(
      title:"The Martian",
      coverImage: MovieImage(
          url:"assets/themartian.jpg",
          title:""),
      description:"",
      studios:"20th Century Fox"
  ),
];
List<Movie> featuredMovies = [
  Movie(
    title:"Wonder Woman 1984",
    coverImage: MovieImage(
      url:"assets/ww1984.jpg",
      title:""),
   description:"",
   studios:"DC"
  ),
  Movie(
    title: "Avenger",
    coverImage: MovieImage(
      url: "assets/avenger.jpg",
      title: ""),
    description: "",
    studios: "Marvel"
  ),
  Movie(
      title: "GodVsKong",
      coverImage: MovieImage(
          url: "assets/godkong.jpg",
          title: ""),
      description: "",
      studios: "WB"
  ),
  Movie(
      title: "Loki",
      coverImage: MovieImage(
          url: "assets/loki.png",
          title: ""),
      description: "",
      studios: "Marvel"
  ),
  Movie(
      title: "Mutants",
      coverImage: MovieImage(
          url: "assets/mutants.jfif",
          title: ""),
      description: "",
      studios: "Marvel"
  ),
];