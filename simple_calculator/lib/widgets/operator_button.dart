import 'package:flutter/material.dart';

class OperatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const OperatorButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label, style: const TextStyle(fontSize: 20)),
    );
  }
}
