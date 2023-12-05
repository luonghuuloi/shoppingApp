import 'package:flutter/material.dart';
import 'package:shopping_app/pages/home/home_page.dart';
import 'package:shopping_app/pages/home/home_start.dart';
import 'package:shopping_app/pages/item/item_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ItemPage(),
      routes: {
        "/": (context) => const HomeStart(),
        "homePage": (context) => const HomePage(),
        "itemPage": (context) => const ItemPage(),
      },
    );
  }
}
