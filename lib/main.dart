import 'package:flutter/material.dart';
import 'package:patterns/button_factory.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Patrón Factory'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonFactory.createButton(
                ButtonType.raised,
                "Raised",
                () => print('pressed button raised'),
              ),
              SizedBox(height: 10),
               ButtonFactory.createButton(
                ButtonType.flat,
                "Flat",
                () => print('pressed button flat'),
              ),
              SizedBox(height: 10),
               ButtonFactory.createButton(
                ButtonType.outline,
                "Outline",
                () => print('pressed button outline'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
