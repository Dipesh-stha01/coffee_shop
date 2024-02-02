import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class Division extends StatelessWidget {
  const Division({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 4,
      decoration: BoxDecoration(
        color: themeColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
