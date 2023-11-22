import 'package:flutter/material.dart';
import 'package:mvvm_mvc_architecture/data/app_exceptions.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          throw InternetException(internetexception: "my exception");
        },
      ),
    );
  }
}
