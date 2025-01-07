import 'package:flutter/material.dart';

class LabeledIconButton extends StatefulWidget {
  const LabeledIconButton({
    Key? key,
    required this.assetImagePath,
    required this.label,
    required this.onPressed,
    this.size = 50,
  }) : super(key: key);

  final String assetImagePath;
  final String label;
  final void Function() onPressed;
  final double size;

  @override
  State<LabeledIconButton> createState() => _LabeledIconButtonState();
}

class _LabeledIconButtonState extends State<LabeledIconButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: widget.size,
          onPressed: widget.onPressed,
          icon: Image.asset(widget.assetImagePath, width: widget.size, height: widget.size),
        ),
        SizedBox(
          width: widget.size * 1.5,
          child: Text(widget.label, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
