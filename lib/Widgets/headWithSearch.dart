import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HeadWithSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: size.height*0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height*0.2-27,
            decoration: BoxDecoration(
                color: Vx.blue500,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Boost Sale", style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Vx.white,
                  fontWeight: FontWeight.bold,
                ),),
                220.widthBox,
                Icon(CupertinoIcons.cart,size: 40,color: Vx.white,)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Vx.blue500.withOpacity(0.23),
                    )
                  ]
              ),
              child: TextField(
                onChanged: (value){},
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Vx.blue500.withOpacity(0.7)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(CupertinoIcons.search,color: Vx.blue500.withOpacity(0.7),)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
