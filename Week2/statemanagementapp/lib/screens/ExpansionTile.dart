import 'package:flutter/material.dart';

class ExpansioExample extends StatefulWidget {
  const ExpansioExample({super.key});

  @override
  State<ExpansioExample> createState() => _ExpansioExampleState();
}

class _ExpansioExampleState extends State<ExpansioExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ExpansionTile Widget Example"),
      ),
      body: Center(
        child: ExpansionTile(
            initiallyExpanded: true,
            title: Text(
              "Expansion Tile",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Top Widget: Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Middle Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'Bottom Widget',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
