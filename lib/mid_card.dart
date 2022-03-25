import 'package:flutter/material.dart';
// ignore: prefer_const_literals_to_create_immutables

class MidCard extends StatefulWidget {
  int height;
  MidCard({required this.height});
  @override
  State<MidCard> createState() => _MidCardState();
}

class _MidCardState extends State<MidCard> {
  //int height = 180;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E98),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.height.toString(),
                style: const TextStyle(fontSize: 50.0),
              ),
              const Text(
                'cm',
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
            ),
            child: Slider(
              value: widget.height.toDouble(),
              onChanged: (double newHeight) {
                setState(() {
                  widget.height = newHeight.toInt();
                });
              },
              min: 120,
              max: 220,
              activeColor: const Color(0xFFEB1555),
            ),
          )
        ],
      ),
    );
  }
}
