import 'package:flutter/material.dart';

class StripeBuilder extends StatelessWidget {
  final int numberOfStripe;
  final BoxConstraints constraints;

  const StripeBuilder({ Key? key, required this.numberOfStripe, required this.constraints }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Container(
          height: constraints.maxHeight / 8,
          color: numberOfStripe % 2 == 0
            ? Colors.black
            : Colors.transparent,
        );
      }
    );
  }
}
