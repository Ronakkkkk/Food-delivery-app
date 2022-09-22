import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';

class Menulist extends StatelessWidget {
  final String foodname;
  final String comment;
  final int price;
  final int index;
  final Color color;
  Menulist(
    this.comment,
    this.foodname,
    this.price,
    this.index,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(
              'assets/images/dish$index.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$foodname',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '$comment',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: color),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "NPR",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '$price',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
