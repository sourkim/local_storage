import 'package:flutter/material.dart';
import 'package:local_storage/db/save_login.dart';
import 'package:local_storage/view/signup_screean.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SaveLogin saveLogin = SaveLogin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            saveLogin.logout();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignupScreean()),
            );
          },
          icon: Icon(Icons.logout, size: 40),
        ),
      ),
    );
  }
}
