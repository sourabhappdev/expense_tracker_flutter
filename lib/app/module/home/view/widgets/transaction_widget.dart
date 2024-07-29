import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
      child: Row(
        children: [FaIcon(FontAwesomeIcons.burger)],
      ),
    );
  }
}
