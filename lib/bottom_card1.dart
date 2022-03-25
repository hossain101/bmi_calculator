import 'package:flutter/material.dart';

class BottomCard1 extends StatefulWidget {
  int weight;
  BottomCard1({required this.weight});
  void setWeight(int weight) {
    this.weight = weight;
  }

  int getWeight() {
    return weight;
  }

  @override
  State<BottomCard1> createState() => _BottomCard1State();
}

class _BottomCard1State extends State<BottomCard1> {
  // int weight = 45;

  String name = 'WEIGHT';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
          ),
          Text(
            widget.weight.toString(),
            style: TextStyle(fontSize: 50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: 'btn1',
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF4C4F5E),
                onPressed: () {
                  setState(() {
                    widget.weight = widget.weight + 1;
                  });
                },
              ),
              SizedBox(width: 10.0),
              FloatingActionButton(
                heroTag: 'btn2',
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF4C4F5E),
                onPressed: () {
                  setState(() {
                    widget.weight = widget.weight - 1;
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
