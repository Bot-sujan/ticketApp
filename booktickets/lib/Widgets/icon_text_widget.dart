import 'package:booktickets/app_layout.dart';
import 'package:booktickets/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(vertical: Applayout.getWidth(12), horizontal: Applayout.getWidth(12)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Applayout.getWidth(10)),
              ),
              child: Row(
                children: [
                  Icon(icon, color: Color(0xFFBFC2DF),),
                  Gap(Applayout.getWidth(10)),
                  Text(text , style: Styles.textStyle,)
                ],
              ),
            
    );
  }
}