import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ttangkkeusmarket/src/widgets/login_appbar.dart';
import 'package:ttangkkeusmarket/wrapper.dart';

import '../cloud_functions/auth_service.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? Key,
  }) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    // final authService = Provider.of<AuthService>(context);

    final currentWdith = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: LoginAppBar(appBar: AppBar(), title: "로그인", center: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFA2A7B9), width: 2.0),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0)),
                  hintText: "아이디를 입력해주세요."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xFFA2A7B9), width: 2.0),
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2.0)),
                  hintText: "비밀번호를 입력해주세요."),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          SizedBox(
            width: currentWdith - 15,
            height: 40.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF6C544),
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  '로그인',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SF',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(
            height: 50.0,
          ),
          SizedBox(
            width: currentWdith - 15,
            height: 40.0,
            child: ElevatedButton(
                onPressed: () {
                  // authService.signInWithEmailAndPassword(
                  // emailController.text, passwordController.text);
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFF6C544), width: 2.0),
                  primary: Colors.transparent,
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                ),
                child: Text(
                  '회원가입',
                  style: TextStyle(
                      color: Color(0xFFF6C544),
                      fontFamily: 'SF',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
    );
  }
}
