import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RecomendItemCard extends StatelessWidget {
  const RecomendItemCard({
    Key key, this.image, this.title, this.used, this.price, this.press, this.id
}): super(key: key);
  final String image,title,used;
  final int price,id;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20,top: 20,bottom: 100),
      width: size.width*0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image,fit: BoxFit.fill),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  color: Vx.white,
                  boxShadow: [
                    BoxShadow(offset: Offset(0,10),
                      blurRadius: 50,
                      color: Vx.blue500.withOpacity(0.2),
                    )
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                              text: "$used".toUpperCase(),
                              style: TextStyle(
                                  color: Vx.blue500.withOpacity(0.5)
                              )
                          )
                        ]
                    ),
                  ),
                  Spacer(),
                  Text("Rs$price",style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Vx.blue500)
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
