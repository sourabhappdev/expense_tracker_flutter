import 'dart:math';

import 'package:expense_tracker/app/core/constants/constant.dart';
import 'package:expense_tracker/app/module/home/view/widgets/money_info_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;
  const HomeScreen(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MoneyInfoCardWidget(),
            ],
          ),
        ),
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
      ),
    );
  }
}
