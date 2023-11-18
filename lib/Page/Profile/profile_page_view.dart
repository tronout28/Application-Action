import 'package:flutter/material.dart';
import '../Widget/navbarWidget.dart';
import '../Widget/profile_page_myactivity_widget.dart';
import '../Widget/profile_page_myaccount_widget.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35, // Ukuran radius avatar
                  backgroundImage:
                      NetworkImage('URL_GAMBAR_AVATAR'), // URL gambar avatar
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome, username',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'My Activity',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              child: ProfilePageActivityWidget(),
            ),
            SizedBox(height: 10),
            Text(
              'My Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            FractionallySizedBox(
              child: ProfilePageAccountView(),
            ),
          ],
        ),
      ),
    );
  }
}
