import 'package:flutter/material.dart';
import 'package:mvvm_mvc_architecture/resources/appcolor/colors.dart';

class Internetexceptionwidget extends StatefulWidget {
  const Internetexceptionwidget({super.key});

  @override
  State<Internetexceptionwidget> createState() =>
      _InternetexceptionwidgetState();
}

class _InternetexceptionwidgetState extends State<Internetexceptionwidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.cloud_off,
          color: Appcolor.redcolor,
          size: 50,
        ),
        const Center(
            child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text("We are unable to connect you to internet"),
        )),
        const SizedBox(height: 25),
        Container(
          height: 44,
          width: 160,
          decoration: BoxDecoration(
              color: Appcolor.bluecolor,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "Retry",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        )
      ],
    );
  }
}
