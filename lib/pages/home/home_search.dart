import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.search),
              Container(
                margin: const EdgeInsets.only(left: 5),
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Search here...', border: InputBorder.none),
                ),
              ),
              const Icon(Icons.filter_list),
            ],
          ),
        )
      ],
    );
  }
}
