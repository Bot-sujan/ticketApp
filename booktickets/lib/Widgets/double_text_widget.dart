import 'package:booktickets/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(bigText, style: Styles.headLineStyle2,),
                InkWell(
                  onTap: () {
                  print("You are tappped");
                },
                
                
                child: Text(smallText, style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],);
  }
}