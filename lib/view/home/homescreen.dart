import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_mvc_architecture/View_models/user_preferences/user_preference_view_model.dart';
import 'package:mvvm_mvc_architecture/resources/routes/routes_name.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final Userpreference _userpreference = Userpreference();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _userpreference.removeuser().then((value) {
                  Get.toNamed(Routename.loginview);
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(),
    );
  }
}
