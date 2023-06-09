// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String ImagePath;
  const NftCard({required this.ImagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            ImagePath,
            fit: BoxFit.cover,
          )),
    );
  }
}
