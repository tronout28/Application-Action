import 'package:application_action/LandingPage/loginpage_view.dart';
import 'package:application_action/consts/consts.dart';
import 'package:application_action/controllers/logout_countroller.dart';
import 'package:flutter/material.dart';
import 'package:application_action/Page/AccountSettings/account_settings_page_view.dart';
import 'package:get/get.dart';

class ProfilePageAccountView extends StatelessWidget {
  const ProfilePageAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FractionallySizedBox(
          widthFactor: 1.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountSettingsPage(),
                ),
              );
            },
            child: Text('Account Settings'),
          ),
        ),
        SizedBox(height: 10),
        FractionallySizedBox(
          widthFactor: 1.0,
          child: ElevatedButton(
            onPressed: () async {
              await Get.put(logoutController()).signoutMethod(context);
              Get.offAll(() => LoginPage());
            },
            child: Text('Logout'),
          ),
        ),
        SizedBox(height: 10),
        FractionallySizedBox(
          widthFactor: 1.0,
          child: ElevatedButton(
            onPressed: () {
              // Help Center
            },
            child: Text('Help Center'),
          ),
        ),
      ],
    );
  }
}
