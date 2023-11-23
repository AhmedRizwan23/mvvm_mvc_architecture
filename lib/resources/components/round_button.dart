import 'package:flutter/material.dart';

class Roundbuttoncustom extends StatelessWidget {
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onpresss;
  Color buttoncolor;
  Roundbuttoncustom(
      {super.key,
      this.buttoncolor = Colors.tealAccent,
      this.height = 50,
      this.width = 50,
      required this.onpresss,
      this.loading = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: loading
            ? const CircularProgressIndicator()
            : Center(
                child: Text(title),
              ));
  }
}
