import 'package:flutter/material.dart';

class StripeBuilder extends StatelessWidget {
  final int numberOfStripe;

  const StripeBuilder({ Key? key, required this.numberOfStripe }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (500 - 10) / 8,
      color: numberOfStripe % 2 == 0
        ? Colors.black
        : Colors.transparent,
    );
  }
}
