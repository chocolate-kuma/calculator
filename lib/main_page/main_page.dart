import 'package:calculator/keyboard/keyboard.dart';
import 'package:calculator/math_field/math_field.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [MathField(), KeyBoard()]);
  }
}
