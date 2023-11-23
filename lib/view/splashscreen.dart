import 'package:flutter/material.dart';

import 'package:mvvm_mvc_architecture/resources/components/internet_exception.dart';
import 'package:mvvm_mvc_architecture/resources/components/round_button.dart';

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
          const Internetexceptionwidget(),
          const SizedBox(height: 10),
          Roundbuttoncustom(onpresss: () {}, title: "Click")
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.snackbar();
        },
      ),
    );
  }
}
