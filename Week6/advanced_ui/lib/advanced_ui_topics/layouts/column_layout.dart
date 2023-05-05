import 'package:flutter/material.dart';

class ColumnLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Layout Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.blue,
            height: 100.0,
            width: 100.0,
          ),
          Container(
            color: Colors.red,
            height: 100.0,
            width: 100.0,
          ),
          Container(
            color: Colors.green,
            height: 100.0,
            width: 100.0,
          ),
        ],
      ),
    );
  }
}
