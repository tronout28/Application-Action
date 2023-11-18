import 'package:flutter/material.dart';
import 'package:application_action/Page/Favorite/favorite_page_view.dart';
import 'package:application_action/Page/Home/home_page_view.dart';
import 'package:application_action/Page/Profile/profile_page_view.dart';
import 'package:get/get.dart';
import 'package:application_action/controllers/navbar_controller.dart';

class NavbarWidget extends StatefulWidget {
  final BottomBarController navigationController =
      Get.put(BottomBarController());

  @override
  State<NavbarWidget> createState() => _ConvexNavigationBarPageState();
}

class _ConvexNavigationBarPageState extends State<NavbarWidget> {
  BottomBarController controller = Get.put(BottomBarController());

  final List<Widget> pages = [
    HomePageView(),
    FavoritePageView(),
    ProfilePageView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
          selectedItemColor: Colors.blue.shade200,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'WishList'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
