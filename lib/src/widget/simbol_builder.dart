import 'package:flutter/material.dart';

class SimbolBuilder extends StatelessWidget {
  const SimbolBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 1.0,
            color: Colors.black
          ),
          bottom: BorderSide(
            width: 1.0,
            color: Colors.black
          ),
        ),
      ),
      child: const Center(
        child: Image(
          image: AssetImage(
            'assets/logo.png',
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
