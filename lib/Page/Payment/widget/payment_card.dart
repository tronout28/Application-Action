import 'package:flutter/material.dart';

// PaymentCard
class PaymentCard extends StatefulWidget {
  final String title;
  final String image;
  final bool isSelected; // Add this line
  final VoidCallback onChanged;

  const PaymentCard({
    required this.title,
    required this.image,
    required this.isSelected, // Add this line
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  // Remove the line: bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        setState(() {
          widget.onChanged();
        });
      },
      child: Container(
        width: screenWidth * 0.92,
        height: screenHeight * 0.08,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: widget.isSelected ? Colors.orange : Colors.grey,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.isSelected ? Colors.orange : Colors.white,
                border: Border.all(
                  color: widget.isSelected ? Colors.orange : Colors.grey,
                ),
              ),
            ),
            Text(widget.title),
            Spacer(),
            Image.asset(widget.image),
          ],
        ),
      ),
    );
  }
}
