import 'package:coffee_shop/pages/detail_page.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:coffee_shop/pages/order_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Coffee Shop App",
        theme: ThemeData(
          fontFamily: "poppins",
        ),
        routes: {
          '/': (context) => const HomePage(),
          'orderPage': (context) => const OrderPage(),
          'detailPage': (context) => const DetailPage(),
        },
      ),
    );
