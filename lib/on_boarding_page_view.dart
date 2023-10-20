import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'on_boarding_page_controller.dart';
import 'on_boarding_widget_view.dart';

class OnBoardingPageView extends StatelessWidget {
  OnBoardingPageView({Key? key}) : super(key: key);
  final controller = Get.put(OnBoardingPageController());

  @override
  Widget build(BuildContext context) {
    OnBoardingContentList contentList = OnBoardingContentList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.currentIndex.value = value;
                },
                itemCount: contentList.list_on_board.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  image1: contentList.list_on_board[index].image1,
                  image2: contentList.list_on_board[index].image2,
                  title: contentList.list_on_board[index].title,
                  description: contentList.list_on_board[index].description,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 30),
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
