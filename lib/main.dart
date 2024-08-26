import 'package:flutter/material.dart';
import 'package:patterns/basic_container.dart';

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
          title: const Text("Patron Decorator en Flutter"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BasicContainer(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              BasicContainer(
                width: 200,
                height: 150,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              BasicContainer(
                width: 200,
                height: 100,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
