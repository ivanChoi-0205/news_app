import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../service/vibration_service.dart';

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: const [
                  Icon(Icons.menu_rounded, size: 28),
                  Spacer(),
                  SizedBox(width: 48),
                  Text('Profile', style: TextStyle(fontSize: 24.0)),
                  Spacer(),
                  Icon(Icons.settings_rounded, size: 28),
                  SizedBox(width: 20),
                  Icon(Icons.notifications_rounded, size: 28),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                clickFeedback();
                log('Background');
              },
              child: Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                const snackBar = SnackBar(
                  backgroundColor: Colors.transparent,
                  content: Text('data'),
                  // dismissDirection:DismissDirection.up,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(Icons.no_accounts),
              label: const Text(
                'label',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
