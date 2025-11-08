import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/*
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
// This is the theme of your application.
//
// TRY THIS: Try running your application with "flutter run". You'll see
// the application has a purple toolbar. Then, without quitting the app,
// try changing the seedColor in the colorScheme below to Colors.green
// and then invoke "hot reload" (save your changes or press the "hot
// reload" button in a Flutter-supported IDE, or press "r" if you used
// the command line to start the app).
//
// Notice that the counter didn't reset back to zero; the application
// state is not lost during the reload. To reset the state, use hot
// restart instead.
//
// This works for code too, not just values: Most code changes can be
// tested with just a hot reload.
colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
),
home: const MyHomePage(title: 'First class'),
);
}
}
class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title});
// This widget is the home page of your application. It is stateful, meaning
// that it has a State object (defined below) that contains fields that affect
// how it looks.
// This class is the configuration for the state. It holds the values (in this
// case the title) provided by the parent (in this case the App widget) and
// used by the build method of the State. Fields in a Widget subclass are
// always marked "final".
final String title;
@override
State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
int _counter = 10;
void _incrementCounter() {
setState(() {
// This call to setState tells the Flutter framework that something has
// changed in this State, which causes it to rerun the build method below
// so that the display can reflect the updated values. If we changed
// _counter without calling setState(), then the build method would not be
// called again, and so nothing would appear to happen.
if( _counter-- >0) {
_counter--;
}
else{
_counter++;
}
});
}
void class_func() {
setState(() {
// This call to setState tells the Flutter framework that something has
// changed in this State, which causes it to rerun the build method below
// so that the display can reflect the updated values. If we changed
// _counter without calling setState(), then the build method would not be
// called again, and so nothing would appear to happen.
if( _counter-- >0) {
_counter--;
}
else{
_counter++;
}
});
}
@override
Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
// by the _incrementCounter method above.
//
// The Flutter framework has been optimized to make rerunning build methods
// fast, so that you can just rebuild anything that needs updating rather
// than having to individually change instances of widgets.
return Scaffold(
appBar: AppBar(
// TRY THIS: Try changing the color here to a specific color (to
// Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// change color while the other colors stay the same.
backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// Here we take the value from the MyHomePage object that was created by
// the App.build method, and use it to set our appbar title.
title: Text(widget.title),
),
body: Center(
// Center is a layout widget. It takes a single child and positions it
// in the middle of the parent.
child: Column(
// Column is also a layout widget. It takes a list of children and
// arranges them vertically. By default, it sizes itself to fit its
// children horizontally, and tries to be as tall as its parent.
//
// Column has various properties to control how it sizes itself and
// how it positions its children. Here we use mainAxisAlignment to
// center the children vertically; the main axis here is the vertical
// axis because Columns are vertical (the cross axis would be
// horizontal).
//
// TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// action in the IDE, or press "p" in the console), to see the
// wireframe for each widget.
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
const Text('You have pushed the button this many times:'),
const Text('happy class:'),
Text(
'$_counter',
style: Theme.of(context).textTheme.headlineMedium,
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: class_func,
tooltip: 'Increment',
child: const Icon(Icons.account_circle),
),
// This trailing comma makes auto-formatting nicer for build methods.
);
}
}
*/

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Route Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // Define routes
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second route
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go to Third Page'),
            ),
            const SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Go back to the first route
            Navigator.pop(context);
          },
          child: const Text('Back to Second'),
        ),
      ),
    );
  }
}
*/

// class SecondPage extends StatelessWidget {
//   const SecondPage({super.key});
//   String _processText(BuildContext context, String text) {
//     // Simple example: make the text uppercase and show it in red in a SnackBar
//     final processedText = text.toUpperCase();
//     return processedText;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController controller = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(title: const Text('Second Page')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextField(
//               controller: controller,
//               inputFormatters: [
//                 LengthLimitingTextInputFormatter(25), // limit to 25 characters
//               ],
//               decoration: const InputDecoration(
//                 labelText: 'Enter something (max 25 characters)',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Go back to the first route
//                 Navigator.pushNamed(context, '/third');
//               },
//               child: const Text('Go to third'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Go back to the first route
//                 Navigator.pop(context);
//               },
//               child: const Text('Go to Home'),
//             ),
//             Text('Happy To have you here'),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog<void>(
//                   context: context,
//                   barrierDismissible: false, // user must tap button!
//                   builder: (BuildContext context) {
//                     //String ura="ura";
//                     String ura = controller.text;
//                     String ura1 = _processText(context, ura);
//                     return AlertDialog(
//                       title: Text('AlertDialog To learn'),
//                       content:
//                           // Text("Ura"),
//                           Text(ura1),
//                       actions: <Widget>[
//                         TextButton(
//                           child: Text('Approve'),
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                         TextButton(
//                           child: Text('Approve'),
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Text('Show Alert'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/second_page.dart';
import 'screens/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MaterialApp(
        title: 'Route Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/second': (context) => const SecondPage(),
          '/third': (context) => const ThirdPage(),
        },
      ),
    );
  }
}




//     return MaterialApp(
//       title: 'Route Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       initialRoute: '/',
//       routes: {
        
//         '/': (context) => const HomePage(),
//         '/second': (context) => const SecondPage(),
//         '/third': (context) => const ThirdPage(),
//       },
//     );
//     )
//   }
// }
