import 'package:flutter/material.dart';

class TextButtonSecondary extends StatelessWidget {
  const TextButtonSecondary({
    super.key,
    this.text,
    required this.onPressed,
    this.child,
  });

  final String? text;
  final void Function() onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.secondary),
      ),
      onPressed: onPressed,
      child: child ??
          Text(
            text ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
    );
  }
}
