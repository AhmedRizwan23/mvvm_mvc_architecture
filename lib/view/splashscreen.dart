import 'package:flutter/material.dart';
import 'package:mvvm_mvc_architecture/resources/assets/images_assets.dart';

import 'package:mvvm_mvc_architecture/utils/utils.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          Image.asset(Imageassets.spidey),
          Image.asset(Imageassets.window)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.snackbar("Hello", "This is from util class");
        },
      ),
    );
  }
}
