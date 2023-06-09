// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:nft_cake/home_page.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class CakeArts extends StatefulWidget {
  const CakeArts({super.key});

  @override
  State<CakeArts> createState() => _CakeArtsState();
}

class _CakeArtsState extends State<CakeArts> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}


