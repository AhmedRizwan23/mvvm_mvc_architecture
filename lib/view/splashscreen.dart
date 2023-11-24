import 'package:flutter/material.dart';
import 'package:mvvm_mvc_architecture/View_models/services/splash_services.dart';


import 'package:mvvm_mvc_architecture/utils/utils.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  Splashservices splashservices = Splashservices();
  @override
  void initState() {
    // TODO: implement initState

    splashservices.islogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: const Center(
        child: Text(
          "Welcome\n    Back",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.imagesnackbar();
        },
      ),
    );
  }
}
