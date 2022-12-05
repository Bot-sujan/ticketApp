import 'package:booktickets/Widgets/tickets_tabs.dart';
import 'package:booktickets/app_info_list.dart';
import 'package:booktickets/app_layout.dart';
import 'package:booktickets/app_styles.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [ 
          ListView(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20), vertical: Applayout.getHeight(20)),
          children: [
            Gap(Applayout.getHeight(40)),
            Text('Tickets', style: Styles.headLineStyle1,),
            Gap(Applayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(Applayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: Applayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor: true,),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Flutter DB', style: Styles.headLineStyle3,),
                            Gap(Applayout.getHeight(5)),
                            Text('Passenger', style: Styles.headLineStyle3,),

                          ],
                        )
                      ],
                    )
                ]),
            )
          ],
        ),
      ]),
    );
  }
}