import 'package:flutter/material.dart';

class WrapLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Layout'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: const [
          Chip(
            label: Text('Tag 1'),
            backgroundColor: Colors.red,
          ),
          Chip(
            label: Text('Tag 2'),
            backgroundColor: Colors.green,
          ),
          Chip(
            label: Text('Tag 3'),
            backgroundColor: Colors.blue,
          ),
          Chip(
            label: Text('Tag 4'),
            backgroundColor: Colors.yellow,
          ),
          Chip(
            label: Text('Tag 5'),
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
