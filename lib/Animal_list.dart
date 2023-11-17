import 'package:flutter/material.dart';

class AnimalListPage extends StatelessWidget {
  final List<String> animals = [
    'Lion',
    'Elephant',
    'Giraffe',
    'Zebra',
    'Monkey',
    'Tiger',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(animals[index]),
          );
        },
      ),
    );
  }
}
