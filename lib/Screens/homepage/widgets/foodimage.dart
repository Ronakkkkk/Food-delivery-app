import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';

class Foodimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 275,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: kbackground,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: 15,
                ),
                width: 230,
                height: 230,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(-1, 10),
                      blurRadius: 10)
                ]),
                child: Image.asset(
                  'assets/images/dish1.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ));
  }
}
