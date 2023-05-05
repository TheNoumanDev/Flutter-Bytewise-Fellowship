import 'package:flutter/material.dart';

class RowLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Layout Example'),
      ),
      body: Row(
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
