import 'package:flutter/material.dart';
import 'package:moviefy_ui/moviedata.dart';

class ScrollableMovieWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool _showTitle;

  final List<Movie> _moviesData;
  ScrollableMovieWidget(this._height,this._width,this._showTitle,this._moviesData);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _moviesData.map((_movie) {
          return Container(
            height: _height,
            width: _width * 0.40,
            padding: EdgeInsets.only(right: _width * 0.03),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: _height * 0.80,
                  width: _width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage(_movie.coverImage.url)
                      )
                  ),
                ),
                _showTitle ? Text(_movie.title,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: _height*0.08
                  ),
                ):Container(),
              ],

            ),
          );
        }).toList(),),
    );
  }
}
