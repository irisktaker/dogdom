import 'package:flutter/material.dart';

Image customIcon(String image, {Color? color}) {
  return Image.asset(
    image,
    width: 24,
    height: 24,
    color: color,
  );
}
