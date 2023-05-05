import 'package:flutter/material.dart';

class StackLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Layout Example'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 200.0,
            width: 200.0,
          ),
          Positioned(
            top: 50.0,
            left: 50.0,
            child: Container(
              color: Colors.red,
              height: 100.0,
              width: 100.0,
            ),
          ),
          Positioned(
            top: 100.0,
            left: 100.0,
            child: Container(
              color: Colors.green,
              height: 100.0,
              width: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
