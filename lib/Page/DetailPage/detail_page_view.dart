// File: detail_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_action/Models/product_mode.dart';

class DetailPageView extends StatelessWidget {
  DetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument = Get.arguments as Map<String, dynamic>;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color(0xFF475269),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(
                          argument["isFavorite"]
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 30,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          argument["isFavorite"] = !argument["isFavorite"];
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      argument["foto"] as String,
                      height: 350,
                      width: 350,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269).withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      argument["nama"] as String,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF475269),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      argument["deskripsi"] as String,
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${argument["harga"]}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //  pembelian
                          },
                          child: Text("Buy Now"),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
