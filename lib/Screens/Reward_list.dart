import 'package:flutter/material.dart';
import 'package:shopping_app_ui/Dummy_data/data.dart';
import 'package:shopping_app_ui/model/cardmodel.dart';

import '../constants/device_size.dart';

class RewardList extends StatelessWidget {
  const RewardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 6),
          child: Container(
            width: displayWidth(context)*0.4,
            decoration: BoxDecoration(
              //color: Colors.blue[100],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(cardlist[index].image)
                ),
            ),
          ),
        );
      },
      itemCount: cardlist.length,
    );
  }
}
