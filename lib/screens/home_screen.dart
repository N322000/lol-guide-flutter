import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _current = 0;
  List imgList = [
    'assets/lol1',
    'assets/lol2',
    'assets/lol3',
    'assets/lol4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: ImageCarousel(),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Carousel(
                dotSize: 5,
                dotColor: Colors.redAccent,
                dotPosition: DotPosition.bottomCenter,
                boxFit: BoxFit.cover,
                images: [
                  AssetImage('assets/lol1.jpg'),
                  AssetImage('assets/lol2.jpg'),
                  AssetImage('assets/lol3.jpg'),
                  AssetImage('assets/lol4.png'),
                  AssetImage('assets/lol5.jpg'),
                ],
                animationCurve: Curves.bounceOut,
                animationDuration: Duration(milliseconds: 2000),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
