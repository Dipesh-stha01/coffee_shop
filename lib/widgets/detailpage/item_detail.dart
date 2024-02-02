import 'package:coffee_shop/common/rating.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "KopinangKao Latte",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Rs. 15,000",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Rating(),
        Text(
          "Kopinangkao latte is a delicious coffee beverage that blends the rich flavors of coffee with the smooth creaminess of milk. It is made by brewing a strong cup of coffee and then adding heated milk to create a creamy texture. The result is a drink that is satisfying and enjoyable for coffee lovers of all ages.",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
