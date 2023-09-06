import 'package:flutter/material.dart';

class MathField extends StatefulWidget {
  const MathField({super.key});

  @override
  State<MathField> createState() => _MathFieldState();
}

class _MathFieldState extends State<MathField> {
  final String _expression = '1+1';
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
            ),
          ),
        ));
  }
}
