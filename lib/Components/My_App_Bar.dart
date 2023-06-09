// ignore_for_file: unused_import
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MyAppBar({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),

        //Search Button
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
