import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class OrderBottomBar extends StatelessWidget {
  const OrderBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: themeColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "Order now",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withOpacity(0.8),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
