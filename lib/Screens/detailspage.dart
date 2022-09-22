import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';
import 'package:food_delivery_app/Screens/homepage/home.dart';
import 'package:food_delivery_app/Screens/homepage/widgets/foodimage.dart';
import 'package:food_delivery_app/Screens/homepage/widgets/foodquantity.dart';
import 'package:food_delivery_app/Widgets/customappbar.dart';
import 'package:food_delivery_app/Screens/homepage/widgets/fooddetail.dart';

class Detailpage extends StatelessWidget {
  final List ingredients = ['Noodle', 'Shrimp', 'Egg', 'Scallion'];
  final List photos = [
    'assets/images/ingre1.png',
    'assets/images/ingre2.png',
    'assets/images/ingre3.png',
    'assets/images/ingre4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Customappbar(
                Icons.favorite_outline,
                Icons.close_outlined,
                rightontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
              ),
              Foodimage(),
              Container(
                color: kbackground,
                child: Column(
                  children: [
                    FodDetail(),
                    Foodquantity(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: kbackground,
                          padding:
                              EdgeInsets.only(top: 25, left: 25, right: 25),
                          child: Row(
                            children: [
                              Text(
                                'Ingredients',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: kbackground,
                          height: 10,
                        ),
                        Container(
                          color: kbackground,
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) => Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            photos[index],
                                            width: 52,
                                          ),
                                          Text(ingredients[index])
                                        ],
                                      ),
                                    )),
                                separatorBuilder: (_, index) => SizedBox(
                                      width: 15,
                                    ),
                                itemCount: 4),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'About',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Text(
                            'Topped with blanched greens, wakame seaweed, and sliced scallion, this steamy bowl of Soba Noodle Soup will bring you extra comfort on cold days! My recipe shows you how to make authentic Japanese soba noodle soup in less than 30 minutes with a variety of toppings such as crispy shrimp tempura, fish cake, and some vegan options.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                wordSpacing: 1.2,
                                height: 1.5,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 100,
          height: 56,
          child: RawMaterialButton(
            onPressed: () {},
            fillColor: kprimarycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
