import 'package:flutter/material.dart';
import '../widgets/number_input.dart';
import '../widgets/operator_button.dart';
import '../utils/calculator_logic.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  double result = 0;

  void calculate(String operator) {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;

    setState(() {
      result = CalculatorLogic.calculate(num1, num2, operator);
      num1Controller.clear();
      num2Controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberInput(
              controller: num1Controller,
              label: 'Enter first number',
            ),
            const SizedBox(height: 15),
            NumberInput(
              controller: num2Controller,
              label: 'Enter second number',
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 15,
              children: [
                OperatorButton(label: '+', onPressed: () => calculate('+')),
                OperatorButton(label: '-', onPressed: () => calculate('-')),
                OperatorButton(label: '*', onPressed: () => calculate('*')),
                OperatorButton(label: '/', onPressed: () => calculate('/')),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
