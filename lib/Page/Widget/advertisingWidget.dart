import 'package:flutter/material.dart';

class AdvertiseWidget extends StatelessWidget {
  const AdvertiseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Special Offer!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Check out our exclusive deals on electronics and gadgets. Limited time offer!',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle button press for ad
              },
              child: Text('Shop Now'),
            ),
          ],
        ),
      ),
    );
  }
}
