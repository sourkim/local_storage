import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_storage/db/save_login.dart';
import 'package:local_storage/view/home_screen.dart';
import 'package:local_storage/view/signup_screean.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogin = false;
  SaveLogin saveLogin = SaveLogin();
  @override
  void initState() {
    super.initState();
    check();
  }

  Future<void> check() async {
    isLogin = await saveLogin.checkLogin();
    setState(() {});
    log("$isLogin");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (isLogin == true) ? HomeScreen() : SignupScreean(),
      debugShowCheckedModeBanner: false,
    );
  }
}
