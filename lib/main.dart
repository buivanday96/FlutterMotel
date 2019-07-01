import 'package:flutter/material.dart';
import 'package:homepage/homepage/banner.dart';
import 'package:homepage/homepage/boxsearch.dart';
import 'package:homepage/homepage/gridtrending.dart';
import 'package:homepage/homepage/authentic.dart';
void main()=>runApp(MyApp());

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
        color: Colors.grey[100],
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
          //adadads
       //   height: 400,
          width: size.width,
          color: Colors.transparent,
          child: Trending(),
        ),
        Container(
          width: size.width,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Authentic(),
        ),
        Container(
          width: size.width,
          height: 400,
          color: Colors.transparent,

        )
      ],
    );
  }
}