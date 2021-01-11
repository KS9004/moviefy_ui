import 'package:flutter/material.dart';
import 'package:moviefy_ui/moviedata.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _deviceHeight;
  var _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
      _featuredMovieWidget(),
      _gradientWidget()
 ]
    );
  }
  Widget _featuredMovieWidget(){
    return SizedBox(height: _deviceHeight*0.50,width:_deviceWidth ,
      child: PageView(
        scrollDirection:Axis.horizontal,
        children:
          featureMovies.map((_movie){
            return Container (
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:AssetImage(_movie.cover.url),
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
}
