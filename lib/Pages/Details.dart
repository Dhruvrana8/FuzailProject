import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailPageDSLR extends StatelessWidget {
  const DetailPageDSLR({Key key, this.image, this.title, this.used, this.price, this.id}) : super(key: key);
  final String image, title, used;
  final int price, id;

  get lipsum => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Center(
                    child: Image.asset(
                this.image,
                height: 360,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
                  )),
              SizedBox(height: 30),
              ListTile(
                title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey[800])),
                subtitle: Text(' $used  ', style: TextStyle(letterSpacing: 1)),
              ),
              Padding(padding: EdgeInsets.all(18),
              child: Text("hi", style: TextStyle(color: Colors.grey[600], height: 1.4))),
            ],
          ),
        ));
  }
}
class DetailPageOther extends StatelessWidget {
  const DetailPageOther({Key key, this.image, this.title, this.used, this.price, this.id}) : super(key: key);
  final String image, title, used;
  final int price, id;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Image.asset(
                this.image,
                height: 360,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )),
              SizedBox(height: 30),
              ListTile(
                title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey[800])),
                subtitle: Text(' night stay for only ', style: TextStyle(letterSpacing: 1)),
              ),
              Padding(padding: EdgeInsets.all(18),
              child: Text("hi", style: TextStyle(color: Colors.grey[600], height: 1.4))),
            ],
          ),
        ));
  }
}
