import 'package:application_action/Page/Payment/widget/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:application_action/consts/consts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

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
        leading: Icon(Icons.arrow_back_ios),
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
                    children: [Text("Subtotal"), Spacer(), Text("Rp. 200.000")],
                  ),
                  Row(
                    children: [
                      Text("Shipping fee"),
                      Spacer(),
                      Text("Rp. 200.000"),
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
                        "Rp. 400.000",
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
                // Handle the payment confirmation
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
