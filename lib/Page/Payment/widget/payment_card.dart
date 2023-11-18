import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  final String title;
  final String image;
  const PaymentCard({required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screemHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        width: screenWidht * 0.92,
        height: screemHeight * 0.08,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: isClicked ? Colors.orange : Colors.grey, width: 2)),
        child: Row(children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isClicked ? Colors.orange : Colors.white,
                border:
                    Border.all(color: isClicked ? Colors.orange : Colors.grey)),
          ),
          Text("Dana"),
          Spacer(),
          Image.asset('assets/images/61kVJZZcYTL-removebg-preview.png')
        ]),
      ),
    );
  }
}
