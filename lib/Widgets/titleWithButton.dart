import 'package:final_year_project/Widgets/titleWithCustomUnderline.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key, this.title, this.press,
}):super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(text: title,),
          Spacer(),
          FlatButton(
            onPressed: press,
            child: Text("More",style: TextStyle(color: Vx.white),),
            color: Vx.blue500,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}
