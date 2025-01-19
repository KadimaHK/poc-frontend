import 'package:flutter/material.dart';

class TextButtonNoBackground extends StatelessWidget {
  const TextButtonNoBackground({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
          ),
          onPressed: onPressed,
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
            ),
          ),
        ),
      ],
    );
  }
}
