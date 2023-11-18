import 'package:application_action/LandingPage/loginpage_view.dart';
import 'package:application_action/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageAccountView extends StatelessWidget {
  const ProfilePageAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildButton(
          onPressed: () {
        //edit
          },
          label: 'Edit Account',
          icon: Icons.settings,
        ),
        SizedBox(height: 10),
        buildButton(
          onPressed: () async {
            Get.offAll(() => LoginPage());
          },
          label: 'Logout',
          icon: Icons.logout,
        ),
        SizedBox(height: 10),
        buildButton(
          onPressed: () {
            // Help Center
          },
          label: 'Help Center',
          icon: Icons.help,
        ),
      ],
    );
  }

  Widget buildButton({
    required VoidCallback onPressed,
    required String label,
    required IconData icon,
  }) {
    return FractionallySizedBox(
      widthFactor: 1.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Warna latar belakang tombol
          onPrimary: Colors.black, // Warna teks pada tombol
          side: BorderSide(color: Colors.black), // Warna pinggiran tombol
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: Colors.black), // Warna ikon
            SizedBox(width: 8), // Jarak antara ikon dan teks
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black), // Warna teks
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
