// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:nft_cake/Theme/glass_box.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;

  const MyBottomBar({required this.index, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      unselectedItemColor: Colors.grey[700],
      selectedItemColor: Colors.grey[700],
      //backgroundColor: Colors.blue,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined), label: 'Notify'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Star'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile')
      ],
    );
  }
}
