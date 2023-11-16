import 'package:application_action/Page/Widget/CategoryWidget.dart';
import '../Widget/navbarWidget.dart';
import '../Widget/advertisingWidget.dart';
import 'package:flutter/material.dart';
import '../Widget/searchWidget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25,
            ),
            SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome, Haidar'),
                  Text(
                    'What are you looking for today?',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: SearchBarWidget(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CategoryWidget(),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: AdvertiseWidget(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                child: Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              // Widget MyFeaturedProductWidget() atau widget lainnya disini
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
