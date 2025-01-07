import 'package:flutter/material.dart';

class TextButtonNoBackground extends StatelessWidget {
  const TextButtonNoBackground({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;

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
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
