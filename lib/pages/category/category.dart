import 'package:flutter/material.dart';
import 'package:shopping_app/pages/category/categorydetails.dart';
import 'package:shopping_app/pages/popular/popular.dart';
import 'package:shopping_app/pages/top/top.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: const Column(children: [CategoryDetails(), PoPuLar(), Top()]),
        ),
      ],
    );
  }
}
