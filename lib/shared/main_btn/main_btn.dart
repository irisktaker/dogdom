import '/utils/colors.dart';
import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget {
  double width;
  double height;
  void Function()? onPressed;
  String txt;

  MainBtn({
    Key? key,
    this.width = 70,
    this.height = 28,
    required this.onPressed,
    this.txt = "Follow",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      // padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          txt,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
