import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_action/Page/Home/home_page_view.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Pembayaran Berhasil!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Get.to(HomePageView());
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
