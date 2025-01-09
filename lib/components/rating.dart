import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rating,
    this.maxRating = 5,
  });

  final num rating;
  final int maxRating;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < maxRating; i++)
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRect(
              child: Align(
                alignment: Alignment.centerLeft,
                widthFactor: rating / maxRating,
                child: Row(
                  children: [
                    for (var i = 0; i < maxRating; i++)
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
