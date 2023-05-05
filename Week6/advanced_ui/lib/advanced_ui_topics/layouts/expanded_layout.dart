import 'package:flutter/material.dart';

class ExpandedLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Layout Example'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 200.0,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 100.0,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
