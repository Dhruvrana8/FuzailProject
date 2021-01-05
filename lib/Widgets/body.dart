import 'package:final_year_project/Widgets/headWithSearch.dart';
import 'package:final_year_project/Widgets/titleWithButton.dart';
import 'package:final_year_project/module/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_year_project/module/RecomendDslr.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeadWithSearch(),

          TitleWithMoreBtn(title: "Cameras",press: (){},),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListDslrs()
          ),

          TitleWithMoreBtn(title: "FootWere",press: (){},),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListFootWear(),
          ),

          TitleWithMoreBtn(title: "Mobile",press: (){},),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListMobile(),
          ),

          TitleWithMoreBtn(title: "Sunglasses",press: (){},),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListSunGlasses(),
          ),

          TitleWithMoreBtn(title: "Watch",press: (){},),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListWatches(),
          ),
        ],
      ),
    );
  }
}
