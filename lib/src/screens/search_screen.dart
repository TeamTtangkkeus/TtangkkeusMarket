import 'package:flutter/material.dart';
import 'package:ttangkkeusmarket/src/widgets/base_appbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBar: AppBar(), title: "검색", center: true),
      body: Center(
          child: Text(
        "Search Screen",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
