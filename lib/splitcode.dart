import 'package:flutter/material.dart';

void main()=>runApp(SplitContainer());
class SplitContainer extends StatelessWidget {
  var context;
  @override
  Widget build(BuildContext context) {
    context = context;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: _bodyScaffold(context),
      ),
    );
  }

  _bodyScaffold(BuildContext context) {
    return Container(
      color: Color.fromRGBO(246, 247, 249, 1),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 120.0,
          ),
          _containerTop(),
          _containerSearchTrend(),
          //SizedBox(height: 5.0),
          //_containerAuthenticRoom()
        ],
      ),
    );
  }

  _containerTop() {
    return Container(
      height: 180.0,
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300],
                offset: Offset(10.0, 10.0),
                blurRadius: 5.0,
                spreadRadius: 0.0)
          ]),
      child: Column(
        children: <Widget>[_containerSearch(), _containerFillterBacsic()],
      ),
    );
  }

  _containerSearch() {
    return Container(
      height: 40.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.grey[50], borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _containerRowLocation(),
          _containerTextFieldSearch()
        ],
      ),
    );
  }

  _containerRowLocation() {
    return Container(
        height: 50.0,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.local_offer,
              color: Colors.pink[300],
              size: 14.0,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'HCM',
              style: TextStyle(color: Colors.pink[300]),
            )
          ],
        ));
  }

  _containerTextFieldSearch() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextField(
          textAlign: TextAlign.left,
          enableInteractiveSelection: true,
          cursorWidth: 0.0,
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Tìm quận, tên đường',
            hintStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 12.0,
            ),
            border: InputBorder.none,
          )),
    );
  }

  _containerFillterBacsic() {
    return Container(
      height: 110.0,
      margin: EdgeInsets.only(left: 1.0, right: 1.0),
      decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _containerBtnFindQuick(),
          _containerBtnFindNear(),
          _containerBtnNotLandLord(),
          _containerBtnPostRoomInfo()
        ],
      ),
    );
  }

  _containerBtnFindQuick() {
    return Container(
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(250, 199, 98, 0.9),
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            child: Icon(
              Icons.flash_on,
              color: Colors.white,
              size: 33,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Tìm phòng gấp',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }

  _containerBtnFindNear() {
    return Container(
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(54, 219, 216, 0.6),
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            child: Icon(Icons.flash_on, color: Colors.white, size: 33),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Tìm gần nơi học & làm',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }

  _containerBtnNotLandLord() {
    return Container(
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(142, 124, 240, 0.6),
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            child: Icon(Icons.vpn_key, color: Colors.white, size: 33),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Không chung chủ',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }

  _containerBtnPostRoomInfo() {
    return Container(
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 48.0,
            width: 48.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(247, 52, 134, 0.6),
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            child: Icon(Icons.flash_on, color: Colors.white, size: 33),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Đăng      phòng dễ',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }

  _containerSearchTrend() {
    return Container(
      height: 300.0,
     
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Xu hướng tìm kiếm',style: TextStyle(fontSize: 18),),
          SizedBox(height: 10.0,),
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
      children: _buildGridTittle2(6),
    );
  }
  List<Widget>_buildGridTittle(numberOfTiles){
    List<String> name =['1','2','3','10','binhthanh','thuduc'];
    List<Container> containers = new List<Container>.generate(numberOfTiles, 
      (int index){
        final imageName ='images/quan${name[index]}.jpg' ;
        return Container(
          child: Image.asset(imageName,fit: BoxFit.cover,),
        );
      }
    );
    return containers;
  }
  List<Widget>_buildGridTittle2(numberOfTiles){
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
  _containerAuthenticRoom() {
    return Container(
      height: 170.0,
      color: Colors.white,
    );
  }
}
