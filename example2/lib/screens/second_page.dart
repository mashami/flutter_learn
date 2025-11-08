import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController first_name = TextEditingController();
    final TextEditingController last_name = TextEditingController();

    final TextEditingController num1Controller = TextEditingController();
    final TextEditingController num2Controller = TextEditingController();
    double result = 0;

    String _processText(BuildContext context, String text) {
      // Simple example: make the text uppercase and show it in red in a SnackBar
      final processedText = text.toUpperCase();
      return processedText;
    }

    double Add(String number1, String number2) {
      double num1 = double.parse(number1);
      double num2 = double.parse(number2);
      result = num1 + num2;
      return result;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        // child: Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Third Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '/');
              },
              child: const Text('Go to Home Page'),
            ),

            const SizedBox(height: 20),

            const Text('Happy To have you here'),
            const SizedBox(height: 20),
            TextField(
              controller: num1Controller,
              // inputFormatters: [
              //   LengthLimitingTextInputFormatter(25), // limit to 25 characters
              // ],
              decoration: const InputDecoration(
                labelText: 'First number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: num2Controller,

              // inputFormatters: [
              //   LengthLimitingTextInputFormatter(25), // limit to 25 characters
              // ],
              decoration: const InputDecoration(
                labelText: 'Second number',
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    // String ura="Please Aprove or Decline";
                    String ura = _processText(
                      context,
                      first_name.text + " " + last_name.text,
                    );

                    double result = Add(
                      num2Controller.text,
                      num1Controller.text,
                    );
                    // String ura1 = _processText(context,ura);
                    return AlertDialog(
                      title: Text('Alert Dialog To learn'),
                      content:
                          // Text("Ura"),
                          Text(result.toString()),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('Decline'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show Alert'),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
