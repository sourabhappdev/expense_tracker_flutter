import 'dart:math';
import 'dart:ui'; // Import the dart:ui package for the ImageFilter class

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constant.dart';

class MoneyInfoCardWidget extends StatelessWidget {
  const MoneyInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 2,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                colors: [
                  Constants.colorPrimary,
                  Constants.colorSecondary,
                  Constants.colorTertiary
                ],
                transform: GradientRotation(pi / 4),
              ),
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          blendMode: BlendMode.hardLight,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(
                    0.3), // Add a semi-transparent color to darken the backdrop
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width / 10),
                    const Text(
                      '49000\$',
                      style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SpendingWidget(
                          iconData: CupertinoIcons.arrow_up,
                          title: "Income",
                          amount: "5000",
                          color: Colors.green,
                        ),
                        SpendingWidget(
                          iconData: CupertinoIcons.arrow_down,
                          title: "Expense",
                          amount: "500",
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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
