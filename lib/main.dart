import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:ttangkkeusmarket/src/cloud_functions/auth_service.dart';
import 'package:ttangkkeusmarket/src/navbar.dart';
import 'package:ttangkkeusmarket/src/providers/bottom_nav_provider.dart';

import 'src/screens/login_screen.dart';
import 'wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF6C544),
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => BottomNavigationProvier()),
      ], child: CustomNavBar()),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Wrapper(),
      //   '/login': (context) => LoginScreen(),
      // }
      // '/register': (context) => RegisterScreen(),
    );
  }
}
