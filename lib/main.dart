import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Checkbox Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.brown,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Check box Widget Example')),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

bool _cValue = false;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        child: Transform.scale(
          scale: 2,
          child: Checkbox(
            value: _cValue,
            onChanged: (status) {
              print(status);
              setState(() {
                _cValue = status!;
              });
            },
            activeColor: Colors.red,
            checkColor: Colors.green,
            tristate: true,
          ),
        ),
      ),
    );
  }
}
