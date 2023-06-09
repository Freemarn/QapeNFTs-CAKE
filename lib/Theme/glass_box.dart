// ignore_for_file: unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_cake/Components/My_Bottom_Bar.dart';

class GlassBox extends StatelessWidget {
  final child;
  const GlassBox({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 127,
        padding: EdgeInsets.all(2),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 12,
            sigmaY: 12,
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: child,
            // decoration: BoxDecoration(
            //     //border: Border.all(color: Colors.grey),
            //     gradient: LinearGradient(
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //         colors: [
            //       Colors.grey.withOpacity(0.4),
            //       Colors.grey.withOpacity(0.1)
            //     ])),
          ),
        ),
      ),
    );
  }
}
