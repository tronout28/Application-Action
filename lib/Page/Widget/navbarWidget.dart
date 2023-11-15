import 'package:application_action/Page/favorite_page_view.dart';
import 'package:application_action/Page/home_page_view.dart';
import 'package:application_action/Page/profile_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key});

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });

  if (index == 0) {
    Get.to(() => HomePageView());
  } else if (index == 1) {
    Get.to(() => FavoritePageView());
  } else if (index == 2) {
    Get.to(() => ProfilePageView());
  }
}


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
