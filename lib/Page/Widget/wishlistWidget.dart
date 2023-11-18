import 'package:flutter/material.dart';

class WishListWidget extends StatelessWidget {
  const WishListWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 5, left: 7),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: 130,
                      ),
                      Image.asset(
                        "assets/images/61kVJZZcYTL-removebg-preview.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Text(
                          "keyboardkeren",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "keyboardkeren",
                          style: TextStyle(
                            color: Colors.blueGrey.shade800.withOpacity(0.8),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Tambahkan IconButton untuk love di pojok kanan atas
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        // Aksi yang ingin dilakukan ketika tombol love ditekan
                        // Misalnya: tambahkan barang ke wish list
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
