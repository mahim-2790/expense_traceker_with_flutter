import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;
  const ChartBar(
      {Key? key,
      required this.label,
      required this.spendingAmount,
      required this.spendingPctOfTotal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return LayoutBuilder(builder: (ctx, constrain) {
      return Padding(
        padding: EdgeInsets.symmetric(
            vertical: constrain.maxHeight * .02, horizontal: 0),
        child: Column(
          children: [
            SizedBox(
              height: constrain.maxHeight * .07,
              child: FittedBox(
                child: Text(
                  '\$${spendingAmount.toStringAsFixed(0)}',
                  // style: const TextStyle(fontSize: 8),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: constrain.maxHeight * .05, horizontal: 0),
              height: constrain.maxHeight * 0.65,
              width: 10,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: const Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: spendingPctOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            Container(
              height: constrain.maxHeight * .07,
              child: FittedBox(
                child: Text(label),
              ),
            ),
          ],
        ),
      );
      ;
    });
  }
}
