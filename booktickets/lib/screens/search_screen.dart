import 'package:booktickets/Widgets/double_text_widget.dart';
import 'package:booktickets/Widgets/icon_text_widget.dart';
import 'package:booktickets/Widgets/tickets_tabs.dart';
import 'package:booktickets/app_layout.dart';
import 'package:booktickets/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: Applayout.getWidth(20),
                       vertical: Applayout.getHeight(20)),
          children: [
             Gap(Applayout.getHeight(40)),
             Text("What are\n you looking for?", 
             style: Styles.headLineStyle1.copyWith(fontSize: Applayout.getWidth(35)),),
             Gap(Applayout.getHeight(20)),
             
             const AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels",),

           Gap(Applayout.getHeight(25)),
            
            const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(Applayout.getHeight(15)),

            const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),

            Gap(Applayout.getHeight(25)),

            Container(
              padding: EdgeInsets.symmetric(vertical: Applayout.getWidth(15), 
                                            horizontal: Applayout.getWidth(15)),
              decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(Applayout.getWidth(10)),
              ),
              child:
                  Center(
                    child: Text("Find Tickets", 
                    style: Styles.textStyle.copyWith(color: Colors.white,),
                    ),
                  ),           
    ),

        Gap(Applayout.getHeight(40)),
         const AppDoubleTextWidget(bigText: "Upcoming Flight", smallText: 'View all'),

         Gap(Applayout.getHeight(15)),

       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
                Container(
                 height: Applayout.getHeight(400),
                 width: size.width*0.42,
                 padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15), vertical: Applayout.getWidth(15)),
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Applayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                 ),
                  child: Column(
                    children: [
                      Container(
                        height: Applayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Applayout.getHeight(12)),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/image_two.jpg"),
                          )
                        ),
                      ),

                      Gap(Applayout.getHeight(15)),

                       Text("20% discount on the early booking of this flight. Don't miss out.",
                            style: Styles.headLineStyle2,
                      )
                    ],
                  ),
                ),


                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                      width: size.width*0.44,
                      height: Applayout.getHeight(174),
                      decoration: BoxDecoration(
                        color: Color(0xFF3Ab8B8),
                        borderRadius: BorderRadius.circular(Applayout.getHeight(18)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(15), horizontal: Applayout.getHeight(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Discount\n for survey",
                        style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Gap(Applayout.getHeight(10)),
                        Text("Take a survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),

                      ]),
                    ),

                    Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                        padding: EdgeInsets.all(Applayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent,
                          ),
                      ),
                    )
                      ],
                    ),

                    Gap(Applayout.getHeight(15)),


                    Container(
                      width: size.width*0.44,
                      height: Applayout.getHeight(210),
                      padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(15), horizontal: Applayout.getWidth(15)),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Applayout.getHeight(18)),
                          color: const Color(0xFFEC6545),
                      ),

                      child: Column(
                        children: [
                          Text("Take love", 
                              style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                              Gap(Applayout.getHeight(50)),

                              RichText(
                                text: const TextSpan(
                                  children: [
                                       TextSpan(
                                        text: '😍',
                                        style: TextStyle(fontSize: 38)
                                       ),
                                        TextSpan(
                                        text: '🥰',
                                        style: TextStyle(fontSize: 50)
                                       ),
                                        TextSpan(
                                        text: '😘',
                                        style: TextStyle(fontSize: 38)
                                       ),

                                  ])
                              )

                        ],
                      ),
                    )
                  ],
                )
        ],
       )


          ],
        ),
    );
  }
}