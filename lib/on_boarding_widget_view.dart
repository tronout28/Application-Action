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
          width: 360,
        ),
        Spacer(),
        SvgPicture.asset(
          image2,
          width: 230,
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
      image1: "assets/images/OnBoarding1.svg",
      image2: "assets/icons/Icon1.svg",
      title: "Purchase Online !!",
      description:
          "Kami Menyediakan Layanan Pembelian Dengan Mudah Menggunakan Ponsel Anda",
    ),
    OnBoardingContent(
        image1: "assets/images/OnBoarding2.svg",
        image2: "assets/icons/Icon2.svg",
        title: "Fast Delivery !!",
        description: "Memiliki Kurir Yang Kencang Boss, Barang Cepat Sampai"),
    OnBoardingContent(
        image1: "assets/images/OnBoarding3.svg",
        image2: "assets/icons/Icon3.svg",
        title: "Get your order !!",
        description: "Ambil Paketmu Sendiri Jika Sudah Diantar"),
  ];
}
