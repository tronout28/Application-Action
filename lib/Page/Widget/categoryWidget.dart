import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.laptop, size: 20),
                onPressed: () {
                },
              ),
              Text('Laptop')
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.headset, size: 20),
                onPressed: () {
                  // Aksi ketika tombol headphone ditekan
                },
              ),
              Text('Headphone')
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.phone, size: 20),
                onPressed: () {
                  // Aksi ketika tombol handphone ditekan
                },
              ),
              Text('Handphone')
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.devices, size: 20),
                onPressed: () {
                  // Aksi ketika tombol barang elektronik lainnya ditekan
                },
              ),
              Text('Other')
            ],
          ),
        ),
      ],
    );
  }
}
