import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child:Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color( 0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21),)
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headLineStyle3.copyWith(color: Colors.white),),

                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children:[ SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,BoxConstraints constraints) {
                              print("The width is ${constraints.constrainWidth()}");
                              return Flex(direction:Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                              width: 3,height: 1,child: DecoratedBox(
                                decoration:BoxDecoration(color: Colors.white),
                              ),
                            ), 
                            ),
                           );
                            } ),
                            
                          ),
                          Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.local_airport_rounded,color: Colors.white,),)),
                        ],
                      ),
                    ),
                        
                          const ThickContainer(),
                          Expanded(child: Container()),
                           Text("London",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        ],
                        
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,child: Text( 'New-York',style: Styles.headLineStyle4.copyWith(color:Colors.white,),
                          ),
                          ),

                          Text("8H 30M",style: Styles.headLineStyle4.copyWith(color: Colors.white ),),
                          


                          SizedBox(
                            width: 100,child: Text( 'London',textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color:Colors.white,),
                          ),
                          ),
                        ],
                      )  
                     
                    ],
                  ),
            ),


            Container(
              color: Styles.orangeColor,
              child:  Row(
                children:[
                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                    ),
                    ),
                    
                  ),

                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:(BuildContext context,BoxConstraints constraints){
                        return Flex(
                          direction:Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(decoration: 
                              BoxDecoration(
                                color: Colors.white,
                              )),
                  
                            )), 
                        );
                      }),
                  )),

                  const SizedBox(
                    width: 10,
                    height: 20,
                    child: DecoratedBox(decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )
                    ),
                    ),
                    
                  )
                ],
              ),
            ),

            Container(
               decoration:  BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),)
              ),
              padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 MAY" ,style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text("DATE" ,style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),


                       Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM" ,style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text("Departure Time" ,style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),


                       Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23" ,style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Gap(5),
                          Text("November" ,style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
                ],
              ),
            ),

        
        );
    
  }
}