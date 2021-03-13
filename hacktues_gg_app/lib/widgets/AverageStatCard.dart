import 'package:flutter/material.dart';

import 'HackTUESText.dart';

class AverageStatCard extends StatefulWidget {
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
  _AverageStatCardState createState() => _AverageStatCardState();
}

class _AverageStatCardState extends State<AverageStatCard>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: widget.opacityFadeInDuration),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animation,
        child: Card(
            elevation: 5.0,
            color: Colors.blueAccent,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 25.0,
                      backgroundColor: widget.topIconBackgroundColor,
                      child: ClipOval(
                          child: SizedBox(
                              width: 90.0,
                              height: 200.0,
                              child: widget.topIcon))),
                  HackTUESText(widget.title,
                      fontSize: 18,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      maxLines: 2),
                  HackTUESText(widget.cardDescription,
                      fontSize: 16,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      maxLines: 3),
                  HackTUESText(widget.aggregatedAmount.toString(),
                      fontSize: 20,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      maxLines: 3),
                ])));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
