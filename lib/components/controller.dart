import 'package:flutter/material.dart';

import 'model.dart';
import 'view.dart';

class CounterController extends StatefulWidget {
  const CounterController({super.key});

  @override
  State<CounterController> createState() => _CounterControllerState();
}

class _CounterControllerState extends State<CounterController> {
  final CounterModel _model = CounterModel();

  void _incrementCounter() {
    setState(() {
      _model.incrementCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterView(
      counter: _model.counter,
      onIncrement: _incrementCounter,
    );
  }
}
