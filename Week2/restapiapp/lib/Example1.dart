import 'dart:convert';
import 'package:flutter/material.dart';
import 'Models/Model1.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model1> ModelValues = [];

  Future<List<Model1>> getPostApi() async {
    print("sd");
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    print(response);
    var data = jsonDecode(response.body.toString());
    print(response);
    if (response.statusCode == 200) {
      for (var i in data) {
        print("sd");
        ModelValues.add(Model1.fromJson(i));
      }
      return ModelValues;
    } else {
      return ModelValues;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Api'),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: getPostApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: ModelValues.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("$index  ${ModelValues[index].title}"),
                        subtitle: Text(ModelValues[index].body.toString()),
                      );
                    },
                  ),
                );
              } else {
                return Text("Loading ....");
              }
            },
          )
        ],
      ),
    );
  }
}
