import 'package:flutter/material.dart';
import 'package:food_delivery_app/Constants/colors.dart';

class FodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      color: kbackground,
      child: Column(
        children: [
          Text(
            'Soba Soup with Shrimp and Greens',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildicontext(Icons.access_time_outlined, Colors.blue, '10 min'),
              _buildicontext(Icons.star_outline, Colors.amber, '4.3'),
              _buildicontext(
                  Icons.local_fire_department_outlined, kcalories, '325 kcal')
            ],
          )
        ],
      ),
    );
  }

  Widget _buildicontext(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Text('$text', style: TextStyle(fontSize: 16))
      ],
    );
  }
}
