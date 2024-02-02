import 'package:coffee_shop/common/sizes.dart';
import 'package:flutter/material.dart';

class SizeSelection extends StatefulWidget {
  const SizeSelection({super.key});

  @override
  State<SizeSelection> createState() => _SizeSelectionState();
}

class _SizeSelectionState extends State<SizeSelection> {
  final bool selectedSize = true;

  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Size",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            // fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                setState(() {
                  currentSelected = 0;
                });
              },
              child: Sizes(
                size: "Small",
                ml: "250ml",
                selected: currentSelected == 0 ? true : false,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                setState(() {
                  currentSelected = 1;
                });
              },
              child: Sizes(
                size: "Medium",
                ml: "360ml",
                selected: currentSelected == 1 ? true : false,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                setState(() {
                  currentSelected = 2;
                });
              },
              child: Sizes(
                size: "Large",
                ml: "440ml",
                selected: currentSelected == 2 ? true : false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
