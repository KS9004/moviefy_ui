import 'package:flutter/material.dart';
import 'package:moviefy_ui/moviedata.dart';
import 'package:moviefy_ui/widgets/scrollabel_movie_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _deviceHeight;
  var _deviceWidth;
  var _selectedMovie;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedMovie = 0;
  }
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
      _featuredMovieWidget(),
      _gradientWidget(),
        _topLayerWidget()
 ]
    );
  }
  Widget _featuredMovieWidget(){
    return SizedBox(height: _deviceHeight*0.50,width:_deviceWidth ,
      child: PageView(
        onPageChanged: (_index){
          setState(() {
            _selectedMovie = _index;
          });
        },
        scrollDirection:Axis.horizontal,
        children:
          featuredMovies.map((_movie){
            return Container (
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage(_movie.coverImage.url),
                ),
              ),
            );
          }).toList(),

      )
    );
  }
  Widget _gradientWidget(){
    return Align(
      alignment:Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight*0.80,
        width: _deviceWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(35, 45, 59, 1.0),
            Colors.transparent],
            stops: [0.65,1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )
        ),
      ),
    );
  }
  Widget _topLayerWidget (){
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: _deviceWidth*0.05,
          vertical: _deviceHeight*0.005),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarWidget(),
          SizedBox(height: _deviceHeight * 0.13,),
          _FeaturedMoviesInfoWidget(),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
            child: ScrollableMovieWidget(_deviceHeight * 0.24, _deviceWidth , true, movies),
          ),
          _featuredMovieBanner()
        ],
      ),
    );
  }
  Widget _topBarWidget(){
    return SizedBox(
      height: _deviceHeight*0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.menu,
          color: Colors.white,
          size: 30,),
          Row(
            children: [
              Icon(Icons.search,
                color: Colors.white,
                size: 30,),
              SizedBox(width: _deviceWidth*0.03,),
              Icon(Icons.notifications_none,
                color: Colors.white,
                size: 30,)
            ],
          )
        ],
      ),
    );
  }
  Widget _FeaturedMoviesInfoWidget(){
    return SizedBox(
      height: _deviceHeight*0.12,
      width: _deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(featuredMovies[_selectedMovie].title,
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: _deviceHeight*0.040
          ),),
          SizedBox(height: _deviceHeight * 0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: featuredMovies.map((_movie){
              bool _isActive = _movie.title == featuredMovies[_selectedMovie].title;
              double _circleRadius = _deviceHeight * 0.004;
              return Container(
                margin: EdgeInsets.only(right: _deviceWidth * 0.015),
                height: _circleRadius * 2,
                width: _circleRadius * 2,
                decoration: BoxDecoration(
                  color: _isActive ? Colors.grey:Colors.green,
                  borderRadius: BorderRadius.circular(100)
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
  Widget _featuredMovieBanner(){
    return Container(
      height: _deviceHeight * 0.17,
      width: _deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(featuredMovies[3].coverImage.url)
        )
      ),
    );
  }
}
