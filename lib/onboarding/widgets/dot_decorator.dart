import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

DotsDecorator dotDecorator = const DotsDecorator(
  size: Size(10.0, 10.0),
  color: Color(0xFFBDBDBD),
  activeSize: Size(22.0, 10.0),
  activeShape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25.0)),
  ),
);

Decoration shapeDecoration = const ShapeDecoration(
  color: Colors.black87,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);
