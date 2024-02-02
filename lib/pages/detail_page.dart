import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/widgets/detailpage/detail_appbar.dart';
import 'package:coffee_shop/widgets/detailpage/detail_bottombar.dart';
import 'package:coffee_shop/widgets/detailpage/item_detail.dart';
import 'package:coffee_shop/widgets/detailpage/item_quantity.dart';
import 'package:coffee_shop/widgets/detailpage/size_selection.dart';
import 'package:coffee_shop/widgets/detailpage/sugar_indicator.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const DetailAppBar(),
              const SizedBox(height: 10),
              const ItemQuantity(),
              const SizedBox(height: 10),
              const ItemDetail(),
              const SizedBox(height: 10),
              const SugarIndicator(),
              const SizedBox(height: 10),
              const SizeSelection(),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub Total",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Rs. 15,000",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Divider(
                height: 2,
                thickness: 2,
                color: themeColor.withOpacity(0.4),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Rs. 15,000",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DetailBottomBar(),
    );
  }
}
