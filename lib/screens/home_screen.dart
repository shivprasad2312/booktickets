import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child:Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                      "Good Morning",style: Styles.headLineStyle3,
                    ),
                    const Gap(5),
                    Text(
                      "Good Morning",style: Styles.headLineStyle1,
                    ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // image: const DecorationImage(
                        //   fit: BoxFit.fitHeight,
                        //   image:AssetImage("assets/images/")
                        //   ,),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),
                      ),
                      Text("Search",
                      style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                const Gap(40),
                InkWell(
                  onTap:(){
                    print("You tapped");
                  } ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights",style: Styles.headLineStyle2,),
                      const Spacer(),
                      Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
                    ],
                  ),
                ),

                // const Gap(15),
                // const TicketView()
              ],
            ),
          ),
          const Gap(15),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          Gap(15),

          Container(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hotels",style: Styles.headLineStyle2,),
                        const Spacer(),
                        Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
                      ],
                    ),
          ),

          Gap(15),

          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                HotelScreen(),
                HotelScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}