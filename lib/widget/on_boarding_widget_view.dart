import 'package:application_action/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//On Boarding Content
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    required this.description,
  });

  final String image1, image2, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image1,
          width: MediaQuery.of(context).size.width,
        ),
        Spacer(),
        SvgPicture.asset(
          image2,
        ),
        Spacer(),
        Container(
          width: 260,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            width: 290,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

//List On Boarding Content
class OnBoardingContentList {
  final List<OnBoardingContent> list_on_board = [
    OnBoardingContent(
      image1: onBoarding1,
      image2: iconBoarding1,
      title: onboardingtittle1,
      description: onboardingdesk1,
    ),
    OnBoardingContent(
        image1: onBoarding2,
        image2: iconBoarding2,
        title: onboardingtittle2,
        description: onboardingdesk2),
    OnBoardingContent(
        image1: onBoarding3,
        image2: iconBoarding3,
        title: onboardingtittle3,
        description: onboardingdesk3),
  ];
}
