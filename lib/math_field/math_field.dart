import 'dart:async';
import 'package:calculator/caluculation/caluculation.dart';
import 'package:flutter/material.dart';

class MathField extends StatefulWidget {
  const MathField({super.key});

  @override
  State<MathField> createState() => MathFieldState();
}

class MathFieldState extends State<MathField> {
  late String _expression = '';

  void UpdateText(String letter) {
    setState(() {
      if (letter == 'C')
        _expression = '';
      else if (letter == '=') {
        _expression = '';
        var ans = Calculator.Execute();
        controller.sink.add(ans);
      } else if (letter == 'e') {
        _expression = 'Error';
      } else
        _expression += letter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            _expression,
            style: const TextStyle(
              fontSize: 64.0,
              color: Colors.white,
            ),
          ),
        ));
  }

  static final controller = StreamController<String>();
  @override
  void initState() {
    super.initState();
    controller.stream.listen((event) => UpdateText(event));
  }
}
