import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage_stateful extends StatefulWidget {
  const HomePage_stateful({super.key});

  @override
  State<HomePage_stateful> createState() => _HomePage_statefulState();
}

class _HomePage_statefulState extends State<HomePage_stateful> {
  int a = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        a++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text(a.toString())),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          a++;
          print(a);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
