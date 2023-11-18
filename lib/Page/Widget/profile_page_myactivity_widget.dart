import 'package:application_action/Page/Favorite/favorite_page_view.dart';
import 'package:application_action/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageActivityWidget extends StatelessWidget {
  const ProfilePageActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildButton(
          onPressed: () {
            // Handle Transaksi button press
          },
          label: 'Riwayat Transaksi',
          icon: Icons.history,
        ),
        SizedBox(height: 10),
        buildButton(
          onPressed: () {
            Get.to(FavoritePageView());
          },
          label: 'Favorite',
          icon: Icons.favorite,
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
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.black), // Warna ikon
                SizedBox(width: 8), // Jarak antara ikon dan teks
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
