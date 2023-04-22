import 'package:flutter/material.dart';

class CustomDotDecorator extends StatelessWidget {
  final int value;
  const CustomDotDecorator({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        value,
        (index) => Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: value == index ? Colors.red : Colors.black38,
              style: BorderStyle.solid,
            ),
          ),
          margin: const EdgeInsets.only(right: 6),
        ),
      ),
    );
  }
}
