import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int a = 0;
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
        child: Icon(Icons.add),
      ),
    );
  }
}
