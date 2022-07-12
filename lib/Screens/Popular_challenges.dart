import 'package:flutter/material.dart';
import 'package:shopping_app_ui/Dummy_data/data.dart';
import 'package:shopping_app_ui/model/cardmodel.dart';

import '../constants/device_size.dart';

class PopularChallenges extends StatelessWidget {
  const PopularChallenges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 6),
          child: Container(
            width: displayWidth(context)*0.38,
            child: CircleAvatar(
              backgroundImage: AssetImage(cardChallenges[index].image),
            ),
          ),
        );
      },
      itemCount: cardChallenges.length,
    );
  }
}
