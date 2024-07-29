import 'package:flutter/cupertino.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Icon(
              CupertinoIcons.profile_circled,
              size: 50,
            ),
            SizedBox(
              width: 2,
            ),
            Column(
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ],
        ),
        Icon(
          CupertinoIcons.settings,
          size: 30,
        ),
      ],
    );
  }
}
