import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';

class Foodquantity extends StatefulWidget {
  @override
  State<Foodquantity> createState() => _FoodquantityState();
}

class _FoodquantityState extends State<Foodquantity> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackground,
      width: double.maxFinite,
      height: 40,
      child: Stack(
        children: [
          Align(
            alignment: Alignment(-0.3, 0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'NPR',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '500',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.4, 0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              decoration: BoxDecoration(
                  color: kprimarycolor,
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index--;
                      });
                    },
                    child: Text(
                      '-',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Text(
                      '$index',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index++;
                      });
                    },
                    child: Text(
                      '+',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
