import 'package:flutter/material.dart';

class AddAnimalPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Add Animal ', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Animal Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the animal name';
                  }
                  return null;
                },
              ),


              TextFormField(
                decoration: InputDecoration(labelText: 'Category'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the category';
                  }
                  return null;
                },
              ),


              TextFormField(
                decoration: InputDecoration(labelText: 'Color'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the color';
                  }
                  return null;
                },
              ),


              TextFormField(
                decoration: InputDecoration(labelText: 'Weight'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the weight';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),


              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Form is valid. Submitting data...');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Set the button color to green
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
