import 'package:flutter/material.dart';
import 'package:news_app/src/widget/drawer/constant/drawer_enum.dart';
import 'package:news_app/src/widget/drawer/model/drawer_model.dart';

import '../../../constants/app_dimen.dart';
import '../../../constants/global_key.dart';
import '../../../service/vibration_service.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    Key? key,
  }) : super(key: key);

  void onCancelButtonClicked() {
    VibrationService().clickFeedback();
    rootScaffoldKey.currentState!.closeDrawer();
  }

  DrawerItemEntity? get logOutItemEntity =>
      DrawerItemEnum.logOut.getItemEntity();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            height: 52.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: generateButtonRadius,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (logOutItemEntity?.icon != null) ...[
                  logOutItemEntity!.icon,
                  const SizedBox(width: 20),
                ],
                Text(logOutItemEntity?.label ?? ''),
              ],
            ),
          ),
          const SizedBox(height: 18),
          GestureDetector(
            onTap: () => onCancelButtonClicked(),
            child: Container(
              height: 52.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: generateButtonRadius,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.cancel_rounded),
                  SizedBox(width: 20),
                  Text('Back to home'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
