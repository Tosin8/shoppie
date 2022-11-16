import 'package:flutter/material.dart';
import 'package:shoppie/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// TO DO TASK: ENDURE TO PUT ANIMATION BOUNCE IN-OUT TO THE SPLASH IMAGE.
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Onscreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset('assets/icons/logo.png')));
  }
}

// adding flutter logo icon - FlutterLogo(size: 200)