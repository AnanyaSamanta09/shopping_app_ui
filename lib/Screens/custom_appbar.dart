import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants/device_size.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: displayHeight(context)*0.08,
              width: displayWidth(context)*0.15,
              decoration: BoxDecoration(
                //color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/aouad.jpg')
                )
              ),
            ),
            SizedBox(
              width: displayWidth(context)*0.02,
            ),
            Text('Hi, Namra',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            )
          ],
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
    );
  }
}
