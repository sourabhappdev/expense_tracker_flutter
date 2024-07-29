import 'package:flutter/material.dart';

class SpendingWidget extends StatelessWidget {
  final String amount, title;
  final IconData iconData;
  final Color color;
  const SpendingWidget({
    super.key,
    required this.amount,
    required this.title,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              iconData,
              color: color,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              "$amount\$",
              style: const TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
