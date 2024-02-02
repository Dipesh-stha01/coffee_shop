import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 90,
      color: Colors.white,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: themeColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.book,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.access_time,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              CupertinoIcons.person,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
