import 'package:flutter/material.dart';
import 'package:ttangkkeusmarket/src/cloud_functions/auth_control.dart';
import 'package:ttangkkeusmarket/src/widgets/base_appbar.dart';
import 'package:ttangkkeusmarket/src/widgets/tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // bottomNavigationBar: const MyBottomNavBar(),
      appBar: BaseAppBar(appBar: AppBar(), title: "λλλ§μΌ", center: true),
      body: const MainTabBar(),
    );
  }
}
