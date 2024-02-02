import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/widgets/orderpage/delivery_detail.dart';
import 'package:coffee_shop/widgets/orderpage/order_appbar.dart';
import 'package:coffee_shop/widgets/orderpage/order_bottombar.dart';
import 'package:coffee_shop/widgets/orderpage/payment_detail.dart';
import 'package:flutter/material.dart';

import '../widgets/orderpage/order_items.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const OrderAppBar(),
              const SizedBox(height: 10),
              const OrderItems(),
              const SizedBox(height: 50),
              Divider(
                thickness: 2,
                color: themeColor.withOpacity(0.4),
              ),
              const DeliveryDetail(),
              Divider(
                thickness: 2,
                color: themeColor.withOpacity(0.4),
              ),
              const PaymentDetail(),
              Divider(
                thickness: 2,
                color: themeColor.withOpacity(0.4),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Rs. 55,000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const OrderBottomBar(),
    );
  }
}
