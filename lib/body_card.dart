// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BodyCard extends StatelessWidget {
  late Color bodyColor;
  late Widget cardChild;
  BodyCard(this.bodyColor, this.cardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: bodyColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15),
    );
  }
}
