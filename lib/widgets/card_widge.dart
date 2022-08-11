import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final double blance;
  final int cardNum;
  final int expireMonth;
  final int expireYear;
  final Color color;
  const CardWidget(
      {Key? key,
      required this.blance,
      required this.cardNum,
      required this.expireMonth,
      required this.expireYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Blanced',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('\$$blance',
                style: TextStyle(color: Colors.white, fontSize: 28)),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('*** $cardNum', style: TextStyle(color: Colors.white)),
                Text('$expireMonth/$expireYear',
                    style: TextStyle(color: Colors.white,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
