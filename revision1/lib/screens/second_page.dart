import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController first_name_controller = TextEditingController();
  String name = "";
  String result = "";

  final TextEditingController firstNumbercontroller = TextEditingController();
  final TextEditingController lastNumbercontroller = TextEditingController();

  void _get_result(BuildContext context, String nameField) {
    setState(() {
      name = nameField;
    });
  }

  void _Add(BuildContext context, String number1, String number2) {
    double num1 = double.parse(number1);
    double nm2 = double.parse(number2);
    setState(() {
      result = (num1 + nm2).toString();
    });
  }

  void _Munis(BuildContext context, String number1, String number2) {
    double num1 = double.parse(number1);
    double nm2 = double.parse(number2);
    setState(() {
      result = (num1 - nm2).toString();
    });
  }

  void _Div(BuildContext context, String number1, String number2) {
    double num1 = double.parse(number1);
    double nm2 = double.parse(number2);
    setState(() {
      result = (num1 / nm2).toString();
    });
  }

  void _Mult(BuildContext context, String number1, String number2) {
    double num1 = double.parse(number1);
    double nm2 = double.parse(number2);
    setState(() {
      result = (num1 * nm2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Hello work"),
            const SizedBox(height: 30),
            const Text("Hello Paccy"),
            const SizedBox(height: 30),

            TextField(
              controller: first_name_controller,
              decoration: const InputDecoration(
                labelText: 'Enter your First name',
                border: OutlineInputBorder(),
              ),
            ),

            Wrap(
              spacing: 12,
              runSpacing: 8,
              children: [
                TextButton(
                  onPressed: () {
                    _get_result(context, first_name_controller.text);
                  },
                  child: const Text("Get result"),
                ),
                Text(name),
              ],
            ),

            const SizedBox(height: 30),

            TextField(
              controller: firstNumbercontroller,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'\d*\.?\d*')),
              ],
            ),
            const SizedBox(height: 20),

            TextField(
              controller: lastNumbercontroller,
              decoration: const InputDecoration(
                labelText: 'Inter Second number',
                border: OutlineInputBorder(),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'\d*\.?\d*')),
              ],
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                TextButton(
                  onPressed: () {
                    _Add(
                      context,
                      firstNumbercontroller.text,
                      lastNumbercontroller.text,
                    );
                    firstNumbercontroller.clear();
                    lastNumbercontroller.clear();
                  },

                  child: Icon(Icons.add),
                ),
                TextButton(
                  onPressed: () {
                    _Munis(
                      context,
                      firstNumbercontroller.text,
                      lastNumbercontroller.text,
                    );
                    firstNumbercontroller.clear();
                    lastNumbercontroller.clear();
                  },
                  child: Icon(Icons.remove),
                ),
                TextButton(
                  onPressed: () {
                    _Mult(
                      context,
                      firstNumbercontroller.text,
                      lastNumbercontroller.text,
                    );
                    firstNumbercontroller.clear();
                    lastNumbercontroller.clear();
                  },
                  child: Text("X"),
                ),
                TextButton(
                  onPressed: () {
                    _Div(
                      context,
                      firstNumbercontroller.text,
                      lastNumbercontroller.text,
                    );
                    firstNumbercontroller.clear();
                    lastNumbercontroller.clear();
                  },
                  child: Text("/"),
                ),
              ],
            ),

            Wrap(spacing: 10, children: [Text("The result"), Text(result)]),
          ],
        ),
      ),
    );
  }
}
