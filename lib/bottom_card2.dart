import 'package:flutter/material.dart';

class BottomCard2 extends StatefulWidget {
  @override
  State<BottomCard2> createState() => _BottomCard2State();
}

class _BottomCard2State extends State<BottomCard2> {
  int age = 18;
  String name = 'AGE';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
          ),
          Text(
            age.toString(),
            style: const TextStyle(fontSize: 50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: 'btn3',
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: const Color(0xFF4C4F5E),
                onPressed: () {
                  setState(() {
                    age++;
                  });
                },
              ),
              const SizedBox(width: 10.0),
              FloatingActionButton(
                heroTag: 'btn4',
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                backgroundColor: const Color(0xFF4C4F5E),
                onPressed: () {
                  setState(() {
                    age--;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
