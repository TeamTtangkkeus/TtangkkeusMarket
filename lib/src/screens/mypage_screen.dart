import 'package:flutter/material.dart';
import 'package:ttangkkeusmarket/src/widgets/appbar.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: BaseAppBar(appBar: AppBar(), title: "마이페이지", center: true),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 340,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6C544),
                    ),
                    child: Text(
                      "로그인/회원가입",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
