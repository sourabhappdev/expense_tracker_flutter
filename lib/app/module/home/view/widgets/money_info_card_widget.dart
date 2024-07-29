import 'dart:math';
import 'dart:ui';

import 'package:expense_tracker/app/module/home/view/widgets/spending_widget.dart';
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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 2,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              blendMode: BlendMode.hardLight,
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
        ),
      ],
    );
  }
}
