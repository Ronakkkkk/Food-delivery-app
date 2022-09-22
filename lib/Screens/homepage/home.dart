import 'package:flutter/material.dart';
import 'package:food_delivery_app/Screens/detailspage.dart';
import 'package:food_delivery_app/Screens/homepage/widgets/food_list.dart';
import 'package:food_delivery_app/Screens/homepage/widgets/foodmenulist.dart';
import 'package:food_delivery_app/Widgets/customappbar.dart';
import 'package:food_delivery_app/Constants/colors.dart';
import 'package:food_delivery_app/Screens/homepage/widgets/Restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var selected = 0;
  final pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Customappbar(
              Icons.arrow_back_ios_outlined,
              Icons.search_outlined,
              leftontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detailpage()),
                );
              },
            ),
            RestaurantInfo(),
            Foodlist(
                selected: selected,
                ontap: (int index) {
                  setState(
                    () {
                      selected = index;
                    },
                  );
                }),
            Menulist('No.1 in Sales', 'Soba Soup', 500, 1, kprimarycolor),
            SizedBox(
              height: 15,
            ),
            Menulist('low Fat', 'Sai Ua Samun Phrai', 699, 2, Colors.grey),
            SizedBox(
              height: 15,
            ),
            Menulist(
                'Highly Recommended', 'Ratouille Pasta', 625, 3, Colors.grey),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 60,
                child: SmoothPageIndicator(
                  controller: pagecontroller,
                  count: 5,
                  effect: CustomizableEffect(
                      dotDecoration: DotDecoration(
                          width: 8,
                          height: 8,
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8)),
                      activeDotDecoration: DotDecoration(
                          width: 10,
                          height: 10,
                          color: kbackground,
                          borderRadius: BorderRadius.circular(10),
                          dotBorder: DotBorder(
                              color: kprimarycolor, padding: 2, width: 2))),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: kprimarycolor,
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30,
          ),
        ));
  }
}
