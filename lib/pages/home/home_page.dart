import 'package:flutter/material.dart';
import 'package:shopping_app/pages/category/category.dart';
import 'package:shopping_app/pages/home/home_list_cart.dart';
import 'package:shopping_app/pages/home/home_search.dart';
import 'package:shopping_app/pages/home/home_wellcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeListCart(),
              HomeWellcome(),
              HomeSearch(),
              Category()
            ],
          ),
        ),
      ),
    );
  }
}
