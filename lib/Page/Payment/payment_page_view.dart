import 'package:application_action/Page/Payment/widget/payment_card.dart';
import 'package:application_action/Page/Successfull/succesPayment.dart';
import 'package:flutter/material.dart';

import 'package:application_action/consts/consts.dart';
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  final double price;

  const PaymentPage({Key? key, required this.price}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedPayment = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: Container(
        width: screenWidth,
        child: Column(
          children: [
            SizedBox(height: 20),
            PaymentCard(
              title: "Dana",
              image: danapic,
              isSelected: selectedPayment == "Dana",
              onChanged: () {
                updateSelectedPayment("Dana");
              },
            ),
            SizedBox(height: 15),
            PaymentCard(
              title: "ShopeePay",
              image: shopeepay,
              isSelected: selectedPayment == "ShopeePay",
              onChanged: () {
                updateSelectedPayment("ShopeePay");
              },
            ),
            SizedBox(height: 15),
            PaymentCard(
              title: "Gopay",
              image: gopay,
              isSelected: selectedPayment == "Gopay",
              onChanged: () {
                updateSelectedPayment("Gopay");
              },
            ),
            SizedBox(height: 40),
            Container(
              width: screenWidth * 0.92,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Price"),
                      Spacer(),
                      Text(
                        "\$ ${widget.price.toStringAsFixed(2)}",
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    width: screenWidth * 0.92,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 2),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Text(
                        "\$ ${widget.price.toStringAsFixed(2)}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(SuccessPage());
              },
              child: Container(
                width: screenWidth * 0.92,
                height: screenHeight * 0.06,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Confirm payment",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateSelectedPayment(String payment) {
    setState(() {
      selectedPayment = payment;
    });
  }
}
