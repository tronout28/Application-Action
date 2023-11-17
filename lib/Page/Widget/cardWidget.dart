import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_action/Page/DetailPage/detail_page_view.dart';
import 'package:application_action/Models/handphone_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    double cardHeight = 800.0;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.80,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 0; i < headphone.length; i++)
          GestureDetector(
            onTap: () {
              Get.to(() => DetailPageView(), arguments: headphone[i]);
            },
            child: Container(
              height: cardHeight,
              padding: EdgeInsets.only(left: 15, right: 15, top: 1),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269),
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      headphone[i]["foto"] as String,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      headphone[i]["nama"] as String,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF475269),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      headphone[i]["harga"].toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
