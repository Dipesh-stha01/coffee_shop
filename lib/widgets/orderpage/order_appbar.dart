import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class OrderAppBar extends StatelessWidget {
  const OrderAppBar({super.key});

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
          const SizedBox(width: 100),
          const Text(
            "Order Details",
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
