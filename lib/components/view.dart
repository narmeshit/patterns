import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const CounterView({
    super.key,
    required this.counter,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo del Patron MVC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pulsa el botón tantas veces:'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onIncrement,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
