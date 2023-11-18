import 'package:application_action/Page/Payment/widget/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screemHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
        ),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
      ),
      body: Container(
        width: screenWidht,
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          PaymentCard(title: "Dana", image: "assets/images/headphone.jpg"),
          SizedBox(
            height: 15,
          ),
          PaymentCard(title: "Dana", image: "assets/images/headphone.jpg"),
          SizedBox(
            height: 15,
          ),
          PaymentCard(title: "Dana", image: "assets/images/headphone.jpg"),
          SizedBox(
            height: 40,
          ),
          Container(
            width: screenWidht * 0.92,
            child: Column(
              children: [
                Row(
                  children: [Text("Subtotal"), Spacer(), Text("Rp. 200.000")],
                ),
                Row(
                  children: [
                    Text("Shipping fee"),
                    Spacer(),
                    Text("Rp. 200.000")
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: screenWidht * 0.92,
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                  )),
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
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: screenWidht * 0.92,
              height: screemHeight * 0.06,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "COnfirm payment",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
