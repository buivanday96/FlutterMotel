import 'dart:math';

import 'package:flutter/material.dart';

class Authentic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _containerBody(context);
  }
  _containerBody(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 10,bottom: 12,right: 10,top:2),
      height: 880,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30,),
          _rowLabel(),
          SizedBox(height: 12),
          Expanded(
            child: _gridviewAuthentic(context),
          ),
           _buttonSeeAll(context)
        ],
      ),
    );
  }
  _rowLabel(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Phòng đã xác thực',style: TextStyle(fontSize: 18)),
        SizedBox(width: 20,),
        Icon(Icons.check_box,color: Colors.blueAccent,)
      ],
    );
  }
  _gridviewAuthentic(BuildContext context){
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 15.0,
      childAspectRatio: MediaQuery.of(context).size.height/1100,
      padding: EdgeInsets.all(2),
      children: _childrenGrid(6)
    );
  }
  List<Widget>_childrenGrid(numberOfTiles){
    List<String> name =['1','2','3','10','binhthanh','thuduc'];
    final _random = new Random();
    List<Container> containers = List<Container>.generate(numberOfTiles,
     (int index){
       final imageName ='images/quan${name[_random.nextInt(name.length)]}.jpg';
       return Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Stack(
             alignment: const Alignment(-1, 1),
             children: <Widget>[
               ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.asset(imageName,fit:BoxFit.fill,width: 200.0,height: 120.0),
               ),
               Container(
                 padding: const EdgeInsets.only(bottom: 6,left: 10),
                 child: Icon(Icons.check_box,color: Colors.blueAccent,),
               )
             ],
           ),
           Row(
             children: <Widget>[
               _fontStyleTop('tìm người thuê'),
               SizedBox(width: 4,),
               _fontStyleTop('.'),
               SizedBox(width: 1,),
               _fontStyleTop('10'),
               Icon(Icons.check,size: 8,color: Colors.grey,),
               _fontStyleTop('/'),
               Icon(Icons.check,size: 8,color: Colors.grey,),
             ],
           ),
           Text('Ký túc xá SweetHome tại Cách Mạng Tháng Tám, Quận 3',
           textAlign: TextAlign.left,
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w700
           ),
           ),
           Row(
             children: <Widget>[
               _fontStylePrice('5.5'),
               SizedBox(width:2 ,),
               _fontStylePrice('triệu'),
               _fontStylePrice('/'),
               _fontStylePrice('người')
             ],
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
              _fontStyleAddress('30 Mai Chí Thọ, Phường An Phú,Quận 2'),
              SizedBox(height: 2,),
              _fontStyleAddress('Quận 2')
             ],
           )
         ],
       ),
       );
     }
     );
     return containers;
  }
  _fontStyleTop(String data){
    return Text(
      data.toUpperCase(),
      style: TextStyle(
        color: Colors.grey,
        fontSize: 8
      ),  
    );
  }
  _fontStylePrice(String data){
    return Text(
      data,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.pinkAccent
      ),
    );
  }
  _fontStyleAddress(String data){
    return Text(
      data,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: Colors.grey[600]
      ),
    );
  }
  //aaaaaaa
  _buttonSeeAll(BuildContext context){
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(width: 2.0, color: Colors.grey[100]),
            bottom: BorderSide(width: 0,color: Colors.transparent),
          ),
        
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 8),
          child: Text('Xem tất cả',style: TextStyle(fontSize: 16,color: Colors.blueAccent[700],fontWeight: FontWeight.w600),),
        ),
      ),
    );
  }
  
}