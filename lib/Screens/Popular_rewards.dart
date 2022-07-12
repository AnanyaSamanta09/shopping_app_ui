import 'package:flutter/material.dart';
import 'package:shopping_app_ui/Dummy_data/data.dart';

import '../constants/device_size.dart';

class PopularRewards extends StatelessWidget {
  const PopularRewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 25),
          child: Container(
            width: displayWidth(context)*0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(cardReward[index].image),
                SizedBox(
                  height: displayHeight(context)*0.01,
                ),
                Column(
                 // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(cardReward[index].text,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context)*0.01,
                    ),
                    Text(cardReward[index].desc,
                      style: TextStyle(
                        fontSize: 15.5 ,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: displayHeight(context)*0.01,
                    ),

                    Container(
                      height: displayHeight(context)*0.050,
                      width: displayWidth(context)*0.28,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange.shade300,
                              child: Icon(Icons.bolt_outlined,color: Colors.black,size: 33,),
                              radius: 20,
                            ),
                            SizedBox(
                              width: displayWidth(context)*0.02,
                            ),
                            Text(cardReward[index].price,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                             )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: cardReward.length,
    );
  }
}
