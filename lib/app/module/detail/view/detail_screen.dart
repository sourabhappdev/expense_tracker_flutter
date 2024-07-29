import 'dart:math';

import 'package:expense_tracker/app/core/utils/widgets/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constant.dart';

class DetailsScreen extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;
  const DetailsScreen(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Details")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const SizedBox(
          width: 60,
          height: 60,
          child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Constants.colorPrimary,
                    Constants.colorSecondary,
                    Constants.colorTertiary
                  ],
                  transform: GradientRotation(pi / 4),
                ),
              ),
              child: Icon(
                CupertinoIcons.add,
                color: Colors.white,
              )),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
          selectedIndex: widget.selectedIndex,
          onItemTapped: widget.onItemTapped),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
