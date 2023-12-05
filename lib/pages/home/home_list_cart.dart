import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shopping_app/pages/home/home_cart_sheet.dart';

class HomeListCart extends StatelessWidget {
  const HomeListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu, color: Colors.white, size: 30),
              Container(
                // padding: EdgeInsets.all(8),
                // decoration: BoxDecoration(
                //     color: Colors.green,
                //     borderRadius: BorderRadius.circular(10),
                //     boxShadow: [
                //       BoxShadow(
                //           color: Colors.white.withOpacity(0.5), blurRadius: 2)
                //     ]),
                child: badges.Badge(
                  badgeContent: const Text('3'),
                  child: FloatingActionButton(
                    backgroundColor: Colors.grey,
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (BuildContext context) {
                            return const HomeCartSheet();
                          });
                    },
                    child: const Icon(
                      CupertinoIcons.cart,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
