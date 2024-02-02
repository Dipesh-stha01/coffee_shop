import 'package:coffee_shop/common/order_item.dart';
import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height / 3.2,

      // color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OrderItem(
            image: "assets/images/1.jpg",
            name: "KopinanagKao Affogato",
            quantity: "1x",
            size: "Large",
            price: "Rs. 15,000",
          ),
          OrderItem(
            image: "assets/images/2.jpg",
            name: "KopinanagKao Moca",
            quantity: "1x",
            size: "Large",
            price: "Rs. 15,000",
          ),
          OrderItem(
            image: "assets/images/3.jpg",
            name: "KopinanagKao Latte",
            quantity: "1x",
            size: "Large",
            price: "Rs. 15,000",
          ),
        ],
      ),
    );
  }
}
