// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:crypto_dashboard/account_balance.dart';
import 'package:crypto_dashboard/notification_bell.dart';
import 'package:crypto_dashboard/user_balance.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        centerTitle: true,
        title: Text("My Money"),
        actions: [
          NotificationBell(),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              AccountBalance(),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: Color.fromRGBO(97, 99, 119, 1),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              UserBalance(),
              // OtherCoins(),
            ],
          ),
        ),
      ),
    );
  }
}
