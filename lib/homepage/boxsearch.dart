import 'package:flutter/material.dart';

class BoxSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _containerTop();
  }
  _containerTop() {
    return Container(
      height: 188.0,
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300],
                offset: Offset(10.0, 10.0),
                blurRadius: 18.0,
                spreadRadius: 5.0)
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
        width: 80.0,
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
              style: TextStyle(color: Colors.pink[300],fontSize: 10),
            )
          ],
        ));
  }

  _containerTextFieldSearch() {
    return Container(
      width: 250.0,
      height: 50.0,
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

}