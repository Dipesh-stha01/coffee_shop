import 'package:coffee_shop/common/credits.dart';
import 'package:coffee_shop/common/divider.dart';
import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class MyCredits extends StatelessWidget {
  const MyCredits({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      height: 50,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: themeColor.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Credits(
              icon: Icons.attach_money,
              title: "My Points",
              subTitle: "Rs. 30,300",
            ),
            Division(),
            Credits(
              icon: Icons.circle,
              title: "My Points",
              subTitle: "Rs. 30,300",
            ),
            Division(),
            Icon(
              Icons.qr_code_scanner,
            ),
          ],
        ),
      ),
    );
  }
}
