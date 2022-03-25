import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopCard extends StatelessWidget {
  late IconData cardIcon;

  late String cardText;

  TopCard(this.cardText, this.cardIcon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}
