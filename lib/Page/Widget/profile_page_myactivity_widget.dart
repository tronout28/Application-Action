import 'package:application_action/consts/consts.dart';
import 'package:flutter/material.dart';

class ProfilePageActivityWidget extends StatelessWidget {
  const ProfilePageActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FractionallySizedBox(
          widthFactor: 1.0,
          child: ElevatedButton(
            onPressed: () {
              // Handle Transaksi button press
            },
            child: Text('Riwayat Transaksi'),
          ),
        ),
        SizedBox(height: 10),
        FractionallySizedBox(
          widthFactor: 1.0,
          child: ElevatedButton(
            onPressed: () {
              // Handle Favorite button press
            },
            child: Text('Favorite'),
          ),
        ),
      ],
    );
  }
}
