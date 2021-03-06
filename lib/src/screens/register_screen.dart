import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:ttangkkeusmarket/src/cloud_functions/auth_control.dart';

import 'package:ttangkkeusmarket/src/screens/home_screen.dart';
import 'package:ttangkkeusmarket/src/widgets/custom_button.dart';
import 'package:ttangkkeusmarket/src/screens/login_screen.dart';
import 'package:ttangkkeusmarket/src/screens/mypage_screen.dart';


import 'package:ttangkkeusmarket/src/models/user.dart';

import '../widgets/components/reusable_primary_button.dart';
import '../widgets/components/reusable_textfield.dart';

import '../widgets/angleleft_appbar.dart';

import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ttangkkeusmarket/Phone/auth_phone.dart';



import 'package:ttangkkeusmarket/src/cloud_functions/auth_service.dart';
import 'package:ttangkkeusmarket/src/cloud_functions/Authstatus.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController useridController = TextEditingController();
  final TextEditingController NameEditingController = TextEditingController();
  String? errorMessage;
  String addressJSON = '';
  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AngleLeftAppBar(
        appBar: AppBar(),
        title: "????????????",
        center: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '?????????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // const Padding(
                  //   padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  // ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    width: currentWidth / 1.65,
                    // width: 235.0,
                    // height: 40.0,
                    child: ReusableTextField(
                      key: ValueKey(3),
                      validator: (value) {
                        if(value!.isEmpty || value.length < 6) {
                          return 'Please enter at least 6 charters';
                        }
                        return null;
                      },
                      controller: useridController,
                      hintText: "???: ttangkkeus12",
                      // helperText: "6??? ????????? ?????? ?????? ????????? ????????? ??????",
                      // hintMaxLines: 1,
                      // helperMaxLines: 1,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  Container(
                    width: currentWidth / 3.8,
                    // height: 50.0,
                    // child: Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFF6C544),
                          width: 1.0,
                        ),
                        primary: Colors.transparent,
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        minimumSize: Size(
                          currentWidth / 1.9,
                          currentHeight / 17.5,
                        ),
                      ),
                      child: const Text(
                        '????????????',
                        style: TextStyle(
                          color: Color(0xFFF6C544),
                          fontFamily: 'SF',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '????????????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              // const Padding(padding: EdgeInsets.only(right: 20)),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: currentWidth,
                // height: 35.0,
                child: ReusableTextField(
                  key: ValueKey(4),
                  controller: authController.passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the password';
                    }
                    return null;
                  },
                  hintText: "??????????????? ??????????????????.",
                ),
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '???????????? ??????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: currentWidth,
                // height: 35.0,
                child: ReusableTextField(
                  key: ValueKey(5),
                  controller: confirmpasswordController,
                  validator: (value) {
                    if (authController.passwordController !=
                        authController.confirmpasswordController) {
                      return "password don't match";
                    }
                    return null;
                  },
                  hintText: "??????????????? ?????? ??? ??????????????????.",
                ),
              ),

              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '??????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: currentWidth,
                // height: 35.0,
                child: ReusableTextField(
                  key: ValueKey(6),
                  controller: NameEditingController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Name cannot be Empty");
                    }
                    return null;
                  },
                  hintText: "???: ?????????",
                ),
              ),

              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '?????????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: currentWidth,
                // height: 35.0,
                child: ReusableTextField(
                  key: ValueKey(7),
                  controller: authController.emailController,
                  validator: (value) {
                  if(value!.isEmpty || !value.contains('@') ){
                    return 'Please enter a valid email address.';
                  }
                  return null;
                  },
                  hintText: "???: ttangkkeus12@ttangkeus.com",
                ),
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '?????????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  ),
                  SizedBox(
                    width: currentWidth / 1.9,
                    // height: 35.0,
                    child: ReusableTextField(
                      key: ValueKey(8),
                      hintText: "'-'?????? ?????????",
                      // helperText: "6??? ????????? ?????? ?????? ????????? ????????? ??????",
                      // hintMaxLines: 1,
                      // helperMaxLines: 1,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  SizedBox(
                    width: currentWidth / 2.9,
                    // width: 140.0,
                    // height: 35.0,
                    // child: Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFF6C544),
                          width: 1.0,
                        ),
                        primary: Colors.transparent,
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        minimumSize: Size(
                          currentWidth / 1.9,
                          currentHeight / 17.5,
                        ),
                      ),
                      child: const Text(
                        '???????????? ??????',
                        style: TextStyle(
                          color: Color(0xFFF6C544),
                          fontFamily: 'SF',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  ),
                  Container(
                    width: currentWidth / 1.9,
                    // height: 35.0,
                    child: ReusableTextField(
                      key: ValueKey(9),
                      // hintText: "'-'?????? ?????????",
                        // helperText: "6??? ????????? ?????? ?????? ????????? ????????? ??????",
                        ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  Container(
                    width: currentWidth / 2.9,
                    // height: 35.0,
                    // child: Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFF6C544),
                          width: 1.0,
                        ),
                        primary: Colors.transparent,
                        elevation: 0.0,
                        shadowColor: Colors.transparent,
                        minimumSize: Size(
                          currentWidth / 1.9,
                          currentHeight / 17.5,
                        ),
                      ),
                      child: const Text(
                        '???????????? ??????',
                        style: TextStyle(
                          color: Color(0xFFF6C544),
                          fontFamily: 'SF',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                  Text(
                    '??????',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                        color: Color(0xFFED752E),
                        fontFamily: 'SF',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: currentWidth,
                // height: 35.0,
                child: ReusableTextField(

                  onTap: () async {
                    KopoModel model = await Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => RemediKopo(),
                      ),
                    );
                    print(model.toJson());
                    setState(() {
                      addressJSON =
                          '${model.address} ${model.buildingName}${model.apartment == 'Y' ? '?????????' : ''}${model.zonecode}';
                    });
                  },
                  hintText: '?????????, ??????, ????????? ??????',
                  suffixIcon: LineIcon(Icons.search),
                ),
              ),
              Text('$addressJSON'), // textfiled ?????? ?????????????????? ?????????
              const SizedBox(height: 140.0),
              ReusablePrimaryButton(
                buttonText: '????????????',
                onTap: () {
                  authController.createAcoount();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
