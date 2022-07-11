import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping_app_ui/Screens/Popular_rewards.dart';
import 'package:shopping_app_ui/Screens/Reward_list.dart';
import 'package:shopping_app_ui/Screens/custom_appbar.dart';

import '../constants/device_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Balance',
                    style: TextStyle(
                      fontSize: 17.3,
                    ),
                  )
                ],
              ),
              CustomAppbar(),

              SizedBox(
                height: 30,
              ),
              Container(
                height: displayHeight(context)*0.18,
                  width: displayWidth(context),
                  child: RewardList()),

              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular rewards',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23
                    ),
                  ),
                  Text('See all   >',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: displayHeight(context)*0.02,
              ),
              Container(
                  height: displayHeight(context)*0.4,
                  width: displayWidth(context),
                  child: PopularRewards()),
            ],
          ),
        ),
       // bottomNavigationBar: ,
      ),
    );
  }
}
