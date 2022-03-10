import 'package:flutter/material.dart';

import 'widget/widget.dart';

class Mengao extends StatelessWidget {
  const Mengao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 500,
            height: 500,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  width: 10.0,
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(250),
                  bottomRight: Radius.circular(250),
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.grey,
                    offset: Offset(5.0, 10.0),
                  ),
                  BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.grey,
                    offset: Offset(-5.0, -5.0),
                  ),
                ]
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            const SimbolBuilder(),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: List.generate(3, (index) => StripeBuilder(
                                    numberOfStripe: index,
                                    constraints: constraints,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ...List.generate(5, (index) => StripeBuilder(
                        numberOfStripe: index + 1,
                        constraints: constraints,
                      ),
                    ),
                    ]
                  );
                }
              ),
            ),
          ),
        ),
      ),
    );
  }
}
