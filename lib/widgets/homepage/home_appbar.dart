import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      child: Row(
        children: [
          Container(
            width: 250,
            decoration: BoxDecoration(
              // color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: themeColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10),
                  width: 200,
                  child: const TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Find here...",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(8),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    color: themeColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CupertinoIcons.cart_fill,
                  color: themeColor,
                  size: 28,
                ),
                SizedBox(width: 10),
                Icon(
                  CupertinoIcons.mail_solid,
                  color: themeColor,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
