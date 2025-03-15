import 'package:api_testing_app/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => const HomeScreen()));
    });
    return const Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Text("this is splash screeen"),
      ),
    );
  }
}
