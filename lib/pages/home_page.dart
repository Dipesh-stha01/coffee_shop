import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/widgets/homepage/home_appbar.dart';
import 'package:coffee_shop/widgets/homepage/home_bottom_nav.dart';
import 'package:coffee_shop/widgets/homepage/my_credits.dart';
import 'package:coffee_shop/widgets/homepage/offer.dart';
import 'package:coffee_shop/widgets/homepage/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const HomeAppBar(),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 120,
                  width: double.maxFinite,
                  child: Offer(),
                ),
                const SizedBox(height: 10),
                const MyCredits(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Menu",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "More ..",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Products(),
                    Spacer(),
                    Products(),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: themeColor.withOpacity(0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 33,
                          backgroundImage: AssetImage("assets/images/1.jpg"),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Let's try our secret menu and get \nhappiness in your every day! 😊",
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                color: themeColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text(
                                "Order here",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNav(),
    );
  }
}
