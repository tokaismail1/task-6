import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  int _selectedRadio = 1; // Default selected radio button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons Example'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          int radioValue = index + 1; // Radio values start from 1
          return RadioListTile<int>(
            title: Text(' $radioValue'),
            value: radioValue,
            groupValue: _selectedRadio,
            onChanged: (int? value) {
              setState(() {
                _selectedRadio = value!;
              });
            },
          );
        },
      ),
    );
  }
}


