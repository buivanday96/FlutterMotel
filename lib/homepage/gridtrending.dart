import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _containerSearchTrend();
  }
  _containerSearchTrend() {
    return Container(
      height: 300.0,  
      margin: EdgeInsets.only(left: 15,bottom: 12,right: 15,top:2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Xu hướng tìm kiếm',style: TextStyle(fontSize: 18),),
          SizedBox(height: 12.0,),
          Expanded(
            child: _gridViewTrend(),
          )
        ],
      )    
    );
  }
  _gridViewTrend(){
    return GridView.extent(
      physics: NeverScrollableScrollPhysics(),
       maxCrossAxisExtent: 150.0,
       mainAxisSpacing: 8.0,
       crossAxisSpacing: 8.0,
       padding: EdgeInsets.all(5.0),
      children: _buildGridTittle(6),
    );
  }

  List<Widget>_buildGridTittle(numberOfTiles){
    List<String> name =['1','2','3','10','binhthanh','thuduc'];
    List<String> name2 =['1','2','3','10','Bình Thạnh','Thủ Đức'];
    List<Stack> containers = List<Stack>.generate(numberOfTiles, 
    (int index){
      final imageName ='images/quan${name[index]}.jpg' ;
      return Stack(
        alignment: const Alignment(0.0, 1.0),
        children: <Widget>[
            ClipRRect(   
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Image.asset(imageName,fit: BoxFit.fill,width: 150.0,height: 150.0,),
          ),
            Container(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Quận ${name2[index]}',
                style: TextStyle(
                  fontSize: 10.0,color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal),),
            ),
          ],
        );
      }
    );
    return containers; 
  }
}