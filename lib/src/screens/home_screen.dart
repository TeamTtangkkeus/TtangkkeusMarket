import 'package:flutter/material.dart';
import 'package:ttangkkeusmarket/src/widgets/base_appbar.dart';
import 'package:ttangkkeusmarket/src/widgets/tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: const MyBottomNavBar(),
        appBar: BaseAppBar(appBar: AppBar(), title: "땅끗마켓", center: true),
        body: const MainTabBar());
  }
}
