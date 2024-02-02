import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailBottomBar extends StatelessWidget {
  const DetailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, "orderPage"),
        borderRadius: BorderRadius.circular(15),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: themeColor,
          ),
          child: Text(
            "Add to cart",
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
