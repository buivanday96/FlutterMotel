import 'package:flutter/material.dart';
import 'package:homepage/homepage/banner.dart';
import 'package:homepage/homepage/boxsearch.dart';
import 'package:homepage/homepage/gridtrending.dart';
void main()=>runApp(MyApp());
//aaaaa
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  static Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: _column1(),
          ),
        ),
      ),
    );
  }
  _column1(){
    return Column(
      children: <Widget>[
        Container(
          height: 420,
          width: 400,
          color: Colors.transparent,
          child: Stack(
            children: <Widget>[
              Container(
                width: size.width,
                height: 242,
                color: Colors.red,
                child: BannerCarousel(),
                ),
              Positioned(
                top: 210,
                left: 5,
                right: 5,
                child:  BoxSearch(),
                  ),
            ],
          ),
        ),
        Container(
       //   height: 400,
          width: size.width,
          color: Colors.transparent,
          child: Trending(),
        ),
        Container(
          height: 200,
          width: size.width,
          color: Colors.yellow,
        )
      ],
    );
  }
}