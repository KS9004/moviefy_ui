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
    return Container();
  }
}
