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
            width: displayWidth(context)*0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                // image: DecorationImage(
                //   fit: BoxFit.fitWidth,
                //     image: AssetImage('assets/Wrist_watch.jpg'),
                //   alignment: Alignment.topCenter
                // )
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
                      // style: TextStyle(
                      //   fontSize: 20,
                      //   fontWeight: FontWeight.bold,
                      // ),
                    ),
                    SizedBox(
                      height: displayHeight(context)*0.01,
                    ),
                    Text(cardReward[index].desc,
                      // style: TextStyle(
                      //   fontSize: 15.5 ,
                      //   fontWeight: FontWeight.bold,
                      // ),
                    ),

                    SizedBox(
                      height: displayHeight(context)*0.01,
                    ),

                    Container(
                      height: displayHeight(context)*0.055,
                      width: displayWidth(context)*0.34,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.orange.shade300,
                              child: Icon(Icons.bolt_outlined,color: Colors.black,size: 33,),
                              radius: 25,
                            ),
                            SizedBox(
                              width: displayWidth(context)*0.02,
                            ),
                            Text('25,503',
                              style: TextStyle(
                                  fontSize: 20,
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
