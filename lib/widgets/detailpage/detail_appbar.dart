import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          InkWell(
            radius: 4,
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_outlined,
              size: 26,
              color: themeColor,
            ),
          ),
          const SizedBox(width: 120),
          const Text(
            "Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
