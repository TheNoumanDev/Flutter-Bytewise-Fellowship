import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementapp/provider/count_provider.dart';

class CountView extends StatefulWidget {
  const CountView({super.key});

  @override
  State<CountView> createState() => _CountViewState();
}

class _CountViewState extends State<CountView> {
  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<countProvider>(context, listen: false);
    //print("Print");
    return Scaffold(
      appBar: AppBar(title: const Text('CountView')),
      body: Column(children: [
        Center(child: Consumer<countProvider>(builder: (context, value, child) {
          //print("Print only this widget");
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 59),
          );
        })),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
