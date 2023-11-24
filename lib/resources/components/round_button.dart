import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Roundbuttoncustom extends StatelessWidget {
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onpresss;
  final Color buttoncolor;
  const Roundbuttoncustom(
      {super.key,
      this.buttoncolor = const Color.fromARGB(255, 29, 93, 171),
      this.height = 50,
      this.width = 50,
      required this.onpresss,
      this.loading = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpresss,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttoncolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: loading
              ? const CupertinoActivityIndicator()
              : Center(
                  child: Text(title),
                )),
    );
  }
}
