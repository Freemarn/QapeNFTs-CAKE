// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List taboption;
  const MyTabBar({required this.taboption, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            tabs: [
              Text(
                taboption[0][0],
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                taboption[1][0],
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                taboption[2][0],
                style: const TextStyle(fontSize: 18),
              ),
            ]),
        Expanded(
          child: TabBarView(
              children: [taboption[0][1], taboption[1][1], taboption[2][1]]),
        ),
      ],
    );
  }
}
