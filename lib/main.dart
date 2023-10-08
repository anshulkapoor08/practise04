import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String ptext = '';
  void method01(value) {
    setState(() {
      ptext = value;
    });
  }

  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Practise number - 4 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            backgroundColor: Colors.green,
            elevation: 50,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      method01('You pressed elevated button');
                    },
                    child: const Text('Elevatedbutton')),
                Text(ptext),
                TextButton(
                    onPressed: () {
                      method01('You pressed flat button');
                    },
                    child: const Text('FlatButton')),
                Text(ptext),
                OutlinedButton(
                    onPressed: () {
                      method01('You pressed Outline button');
                    },
                    child: const Text('OutlineButton')),
                Text(ptext),
                Checkbox(
                    value: cbool,
                    onChanged: (bool? cb) {
                      setState(() {
                        cbool = cb!;
                        print(cbool);
                      });
                    }),
                const Radio(value: 1, groupValue: 5, onChanged: null),
                const Radio(value: 2, groupValue: 2, onChanged: null),
                const Radio(value: 3, groupValue: 7, onChanged: null),
              ],
            ),
          ),
      ),
    );
  }
}
