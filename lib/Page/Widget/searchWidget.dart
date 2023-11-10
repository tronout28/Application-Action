import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}
