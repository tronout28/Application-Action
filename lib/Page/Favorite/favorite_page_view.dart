import 'package:application_action/consts/consts.dart';
import 'package:flutter/material.dart';

class FavoritePageView extends StatelessWidget {
  const FavoritePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: "favorite is Empty!"
          .text
          .color(primaryColor)
          .makeCentered(),
    );
    
  }
}
