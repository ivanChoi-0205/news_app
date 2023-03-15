import 'package:flutter/material.dart';

import '../../../../util/service/vibration_service.dart';

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
                VibrationService().slideFeedback();
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
