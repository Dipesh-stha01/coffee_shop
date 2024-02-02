import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/material.dart';

class SugarIndicator extends StatefulWidget {
  const SugarIndicator({super.key});

  @override
  State<SugarIndicator> createState() => _SugarIndicatorState();
}

class _SugarIndicatorState extends State<SugarIndicator> {
  double currentLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sugar",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            // fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Less",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Medium",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Strong",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Slider(
              value: currentLevel,
              onChanged: (value) {
                setState(() {
                  currentLevel = value;
                });
              },
              min: 1,
              max: 3,
              divisions: 2,
              activeColor: themeColor,
              thumbColor: themeColor,
              inactiveColor: themeColor.withOpacity(0.2),
            ),
          ],
        ),
      ],
    );
  }
}
