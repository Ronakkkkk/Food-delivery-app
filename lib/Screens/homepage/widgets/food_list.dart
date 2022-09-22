import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';

class Foodlist extends StatelessWidget {
  final Function ontap;
  final int selected;
  Foodlist({required this.selected, required this.ontap});
  final List<String> list = [
    'Recommended',
    'Popular',
    "MoMo",
    'Sekuwa',
    'KKFC'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 30),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 25),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => ontap(index),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selected == index ? kprimarycolor : Colors.white,
                    ),
                    child: Text(
                      list[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 20,
                ),
            itemCount: 5));
  }
}
