// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class Sizes extends StatelessWidget {
  final bool selected;
  final String size;
  final String ml;
  const Sizes({
    Key? key,
    required this.selected,
    required this.size,
    required this.ml,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: selected == true ? themeColor : Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: selected == true
            ? Border.all(color: Colors.white)
            : Border.all(
                color: themeColor,
              ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            size,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: selected == true ? Colors.white : Colors.black,
            ),
          ),
          Text(
            ml,
            style: TextStyle(
              fontSize: 11,
              color: selected == true ? Colors.white : Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
