import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  var myOpacity = 1.0;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpacity,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 70,
                  width: 70,
                  color: Colors.blueAccent,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        if (myOpacity == 1.0) {
                          myOpacity = 0.0;
                          flag = false;
                        } else {
                          myOpacity = 1.0;
                          flag = true;
                        }
                      },
                    );
                  },
                  child: const Text('Hello'))
            ],
          ),
        ));
  }
}
