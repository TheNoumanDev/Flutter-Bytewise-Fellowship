import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Stack Widget Example"),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          //overflow: Overflow.visible,
          children: <Widget>[
            // Max Size Widget
            Container(
              height: 300,
              width: 400,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Top Widget: Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              child: Container(
                height: 100,
                width: 150,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Middle Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'Bottom Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
