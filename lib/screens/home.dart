import 'package:flutter/material.dart';

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
      _featuredMovieWidget()
      ],
    );
  }
  Widget _featuredMovieWidget(){
    return SizedBox(height: _deviceHeight*0.50,width:_deviceWidth ,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:AssetImage('assets/ww1984.jpg')
          )
        ),
      ) ,
    );
  }
}
