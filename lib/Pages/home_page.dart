import 'package:final_year_project/Widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:VxAppBar(
        backgroundColor: Vx.blue500,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Vx.white,),
        ),
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
