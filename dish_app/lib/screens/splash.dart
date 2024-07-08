import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:dish_app/utils/util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      print("User Details: $user");
      if (user == null) {
        print('User is currently signed out!');
        Timer(const Duration(seconds: 2), () {
          Navigator.of(context).pushReplacementNamed("/login");
        });
      } else {
        print('User is signed in!');
        Util.UID = user.uid;
        Timer(const Duration(seconds: 2), () {
          Navigator.of(context).pushReplacementNamed("/dishlist");
        });
      }
    });

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/zotato.png",
                height: 300,
                width: 300,
              ),
              const Text(
                "Zotato",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
