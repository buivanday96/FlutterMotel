import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class BannerCarousel extends StatelessWidget {
  List<String> _imageName =[
    'images/picture1.jpg',
    'images/picture2.jpg',
    'images/picture3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return  new SizedBox(
    height: 200.0,
    width: 350.0,
    child: new Carousel(
      images: [
        new ExactAssetImage('images/picture1.jpg'),
        new ExactAssetImage('images/picture2.jpg'),
        new ExactAssetImage("images/picture3.jpg")
      ],
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.white,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.purple.withOpacity(0),
      borderRadius: false,
      moveIndicatorFromBottom: 50.0,
      noRadiusForIndicator: false,
    )
);
  }

}
