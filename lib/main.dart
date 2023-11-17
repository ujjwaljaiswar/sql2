import 'package:flutter/material.dart';
import 'add_animal.dart';
import 'animal_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFormPage(),
    );
  }
}

class MyFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double buttonWidth = 200.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Animal App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAnimalPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Add Animal'),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnimalListPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('View Animals'),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
