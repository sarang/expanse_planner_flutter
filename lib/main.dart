import './transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
      id: 't1',
      title: 'New Sandals',
      amount: 800,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'New cap',
      amount: 500,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("Charts"),
              elevation: 6,
            ),
          ),
          Card(
            child: Text("List of TX"),
          ),
        ],
      ),
    );
  }
}
