import 'package:flutter/material.dart';
import 'banner.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: _bodyColumn(),
      ),
    );
  }

  _bodyColumn() {
    return Container(
      child: Column(
        children: <Widget>[
          BannerCarousel(),
          Container(
            height: 100,
            color: Colors.white10,
          ), 
          Container(
            height: 100,
            color: Colors.white24,
          )
          ],
      ),
    );
  }

  _stackTop() {
    return Stack(
      alignment: Alignment(0.0, 1.0),
      children: <Widget>[
        Container(
          height: 400,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              BannerCarousel(), 
              Container(
                height: 200,
                color: Colors.transparent,
                )
              ],
          ),
        ),
        Container(
          height: 150,
          color: Colors.red,
        )
      ],
    );
  }
}
