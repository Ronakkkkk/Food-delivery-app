import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';

class RestaurantInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Restaurant',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '5-10 min',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '1.5 km',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.4)),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/res_logo.png',
                      width: 80,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mutton Sekuwa is delicious!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    color: kprimarycolor,
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
