import 'package:calculator/keyboard/button.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Center(
            child: Container(
          color: Colors.white,
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            children: [
              '7',
              '8',
              '9',
              '÷',
              '4',
              '5',
              '6',
              '×',
              '1',
              '2',
              '3',
              '-',
              'C',
              '0',
              '=',
              '+',
            ].map((key) {
              return GridTile(
                child: MathButton(key),
              );
            }).toList(),
          ),
        )));
  }
}
