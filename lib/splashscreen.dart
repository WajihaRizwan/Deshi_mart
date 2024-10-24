import 'dart:async';

import 'package:app/main.dart';
import 'package:app/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void _navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Welcomescreen(),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
       Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Welcomescreen(),
      ),
    );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Image(
      image: AssetImage('assets/SPALCE PAGE.png'),
    ));
  }
}
