// ignore_for_file: prefer_const_constructors

import 'package:crypto_dashboard/constants.dart';
import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(Icons.notifications),
            Container(
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kDangerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
