import 'package:flutter/material.dart';
import 'package:project2/screens/home.dart';
import 'package:project2/screens/onboardingScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return OnBoard();
      }));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your splash screen image
            Image.asset(
              'assets/bigDoc.png',
              width: 300.0,
              height: 300.0,
            ),
            SizedBox(height: 80),
            Text(
              'Welcome To Our Health Care App',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
