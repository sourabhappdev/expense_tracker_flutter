import 'dart:math';

import 'package:expense_tracker/app/core/constants/constant.dart';
import 'package:expense_tracker/app/module/home/view/widgets/money_info_card_widget.dart';
import 'package:expense_tracker/app/module/home/view/widgets/transaction_widget.dart';
import 'package:expense_tracker/app/module/home/view/widgets/user_profile_widget.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const UserProfileWidget(),
              const SizedBox(
                height: 50,
              ),
              const MoneyInfoCardWidget(),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => const TransactionWidget(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                    itemCount: 5),
              )
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
