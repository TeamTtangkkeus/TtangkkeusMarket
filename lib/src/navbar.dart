import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:line_icons/line_icons.dart';

import 'package:ttangkkeusmarket/src/providers/bottom_nav_provider.dart';
import 'package:ttangkkeusmarket/src/screens/home_screen.dart';
import 'package:ttangkkeusmarket/src/screens/category_screen.dart';
import 'package:ttangkkeusmarket/src/screens/search_screen.dart';
import 'package:ttangkkeusmarket/src/screens/mypage_screen.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvier bottomNavigationBar =
        Provider.of<BottomNavigationProvier>(context);

    Widget _navigationBody() {
      switch (bottomNavigationBar.currentPage) {
        case 0:
          return HomeScreen();
        case 1:
          return CategoryScreen();
        case 2:
          return SearchScreen();
        case 3:
          return MypageScreen();
      }
      return Container();
    }

    Widget _bottomNavigationBarWidget() {
      return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LineIcons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '마이페이지',
          ),
        ],
        currentIndex: bottomNavigationBar.currentPage,
        unselectedItemColor: Color(0xFF161921),
        selectedItemColor: Color(0xFFF6C544),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          bottomNavigationBar.updateCurrentPage(index);
          // provider navigation state;
        },
      );
    }

    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
