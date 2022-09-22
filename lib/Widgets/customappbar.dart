import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  final IconData lefticon;
  final IconData righticon;
  final Function? rightontap;
  final Function? leftontap;
  Customappbar(this.lefticon, this.righticon,
      {this.rightontap, this.leftontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftontap != null
                ? () {
                    leftontap!();
                  }
                : null,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Icon(lefticon),
            ),
          ),
          GestureDetector(
            onTap: rightontap != null
                ? () {
                    rightontap!();
                  }
                : null,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Icon(righticon),
            ),
          )
        ],
      ),
    );
  }
}
