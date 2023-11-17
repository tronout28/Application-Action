import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdvertiseWidget extends StatelessWidget {
  AdvertiseWidget({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> advertisements = [
    {
      'title': 'Special Offer Keyboard',
      'description': 'Diskon 50%!',
      'image':
          'assets/images/61kVJZZcYTL-removebg-preview.png', // Gantilah dengan path gambar yang sesuai
    },
    {
      'title': 'Special Offer Headphone',
      'description': 'Diskon 60%!',
      'image':
          'assets/images/OIP-removebg-preview.png', // Gantilah dengan path gambar yang sesuai
    },
    {
      'title': 'Special Offer SmartWatch',
      'description': 'Diskon 70%!',
      'image':
          'assets/images/smartwatch-removebg-preview.png', // Gantilah dengan path gambar yang sesuai
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
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
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: advertisements.map((ad) {
                return Container(
                  key: Key(ad['title']!),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ad['title']!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              ad['description']!,
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press for ad
                              },
                              child: Text('Shop Now'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Image.asset(
                        ad['image'],
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 150.0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                autoPlay: true, // Aktifkan otomatis penggeseran slide
                autoPlayInterval:
                    Duration(seconds: 3), // Atur interval otomatis penggeseran
                autoPlayAnimationDuration: Duration(
                    milliseconds:
                        800), // Atur durasi animasi otomatis penggeseran
                autoPlayCurve: Curves
                    .fastOutSlowIn, // Atur kurva animasi otomatis penggeseran
                viewportFraction: 1.0, // Tidak memperlihatkan slide berikutnya
              ),
            ),
          ],
        ),
      ),
    );
  }
}
