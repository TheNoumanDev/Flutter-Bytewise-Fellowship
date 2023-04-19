import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class stateFullExam extends StatefulWidget {
  const stateFullExam({super.key});

  @override
  State<stateFullExam> createState() => _HomePage_statefulState();
}

class _HomePage_statefulState extends State<stateFullExam> {
  int a = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer.periodic(Duration(seconds: 1), (timer) {});
  }

  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      body: Center(
        child: Text(
          a.toString(),
          style: TextStyle(color: Colors.black, fontSize: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          a++;
          print(a);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
