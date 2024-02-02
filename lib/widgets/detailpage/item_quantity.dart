import 'package:coffee_shop/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemQuantity extends StatefulWidget {
  const ItemQuantity({super.key});

  @override
  State<ItemQuantity> createState() => _ItemQuantityState();
}

class _ItemQuantityState extends State<ItemQuantity> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: themeColor.withOpacity(0.2),
                  offset: const Offset(3, 6),
                  spreadRadius: 0,
                  blurRadius: 4,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(3, 2),
                  spreadRadius: 0,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/1.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: MediaQuery.of(context).size.width / 2.8,
            child: Container(
              width: 80,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: themeColor.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(-1, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 25,
                    decoration: const BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (quantity <= 1) return;
                            quantity--;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.minus,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(quantity.toString()),
                  ),
                  Container(
                    width: 25,
                    decoration: const BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.plus,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
