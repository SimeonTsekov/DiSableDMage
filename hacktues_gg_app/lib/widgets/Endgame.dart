import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/widgets/HackTUESText.dart';

class Endgame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const HackTUESText(
                'We\'re sorry to say this...',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'assets/white-isometric-factory_1344-6.jpg',
                width: 200,
                height: 100,
              ),
              const HackTUESText(
                'But it appears you\'ve doomed your city with the poison of pollution.',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const HackTUESText(
                'Please, take better care of the environment next time.',
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const HackTUESText(
                'Because we DON\'T have another chance in real life.',
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              )
            ]));
  }
}
