import 'package:flutter/material.dart';

void main() {
  runApp(new CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [ItemCounter('Leo')],
          ),
        ),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  const ItemCounter(this.name);
  final String name;

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          counter++;
        });
      },
      child: Text(
        '${widget.name}: $counter',
        style: const TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
