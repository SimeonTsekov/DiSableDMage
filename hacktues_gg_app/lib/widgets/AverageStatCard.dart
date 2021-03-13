import 'package:flutter/material.dart';

import 'HackTUESText.dart';

class AverageStatCard extends StatelessWidget {
  final String title;
  late final String cardDescription;
  final double aggregatedAmount;
  final int opacityFadeInDuration;
  final Icon topIcon;
  final Color topIconBackgroundColor;

  AverageStatCard(
      {Key? key,
      required this.title,
      required this.aggregatedAmount,
      required this.opacityFadeInDuration,
      required this.topIcon,
      required this.topIconBackgroundColor})
      : super(key: key) {
    this.cardDescription = 'Your average ${title.toLowerCase()}';
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(milliseconds: opacityFadeInDuration),
      child: Card(
          elevation: 5.0,
          color: Colors.blueAccent,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 25.0,
                    backgroundColor: topIconBackgroundColor,
                    child: ClipOval(
                        child: SizedBox(
                            width: 90.0, height: 200.0, child: topIcon))),
                HackTUESText(title,
                    fontSize: 16,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.bold,
                    maxLines: 2),
                HackTUESText(cardDescription,
                    fontSize: 15,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w300,
                    maxLines: 3),
                HackTUESText(aggregatedAmount.toStringAsFixed(2),
                    fontSize: 19,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.bold,
                    maxLines: 3),
              ])),
    );
  }
}
