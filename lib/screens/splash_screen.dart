import 'package:bookie/screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState(); //call the initstate of the parent class

    // delay 3 seconds to go to home page
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Bookie".toUpperCase(),
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w800,
            fontFamily: 'Zen Dots',
          ),
        ),
      ),
    );
  }
}
