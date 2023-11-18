import 'package:flutter/material.dart';

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
                // Navigasi kembali ke halaman sebelumnya atau halaman utama
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}