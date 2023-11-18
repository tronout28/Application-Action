import 'package:application_action/LandingPage/landing_page_view.dart';
import 'package:application_action/consts/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:application_action/LandingPage/onBoarding/on_boarding_page_controller.dart';
import 'package:application_action/LandingPage/onBoarding/on_boarding_widget_view.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: fourthColor),
                    onPressed: () {
                      if (controller.currentIndex.value > 0) {
                        controller.pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      }
                    },
                    child: const Text('back'),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: fourthColor),
                    onPressed: () {
                      controller.currentIndex.value == 2
                          ? Get.to(LandingPageView())
                          : controller.pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                    },
                    child: const Text('next'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
