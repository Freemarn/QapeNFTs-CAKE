// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:nft_cake/Components/My_App_Bar.dart';
import 'package:nft_cake/Components/My_Bottom_Bar.dart';
import 'package:nft_cake/Components/My_Tab_Bar.dart';
import 'package:nft_cake/Theme/glass_box.dart';
import 'package:nft_cake/pages/Recent_tab.dart';
import 'package:nft_cake/pages/Top_tab.dart';
import 'package:nft_cake/pages/Trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //search Button Tapped
  void _searchButtonTapped() {}

  //Our 3 tab options

  List taboption = const [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];

  //Bottom Bar Navigation
  int _currentBottomIndex = 0;
  void _handledBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: taboption.length,
        child: SafeArea(
          child: Scaffold(
            extendBody: true,
            bottomNavigationBar: GlassBox(
              child: MyBottomBar(
                index: _currentBottomIndex,
                onTap: _handledBottomIndexChange,
              ),
            ),
            backgroundColor: Colors.grey[300],
            body: ListView(
              padding: EdgeInsets.all(20),
              //AppBar + Search Button
              children: [
                MyAppBar(
                  title: 'Explore \nCollections',
                  onTap: _searchButtonTapped,
                ),

                const SizedBox(
                  height: 25,
                ),
                //Tab Bar
                SizedBox(
                  height: 600,
                  child: MyTabBar(
                    taboption: taboption,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
