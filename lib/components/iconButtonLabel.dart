import 'package:flutter/material.dart';

class LabeledIconButton extends StatefulWidget {
  const LabeledIconButton({
    Key? key,
    required this.assetImagePath,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String assetImagePath;
  final String label;
  final void Function() onPressed;

  @override
  State<LabeledIconButton> createState() => _LabeledIconButtonState();
}

class _LabeledIconButtonState extends State<LabeledIconButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: widget.onPressed,
          icon: Image.asset(widget.assetImagePath)
        ),
        Text(widget.label),
      ],
    );
  }
}