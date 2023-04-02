import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../provider/FavouriteProvider.dart';

class favouriteView extends StatefulWidget {
  const favouriteView({super.key});

  @override
  State<favouriteView> createState() => _favouriteViewState();
}

class _favouriteViewState extends State<favouriteView> {
  @override
  Widget build(BuildContext context) {
    //final provider = Provider.of<favouriteprovider>(context);
    print("build");
    return Scaffold(
      appBar: AppBar(title: const Text('FavouriteView')),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Consumer<favouriteprovider>(
                  builder: (context, value, child) {
                return ListTile(
                  onTap: () {
                    if (value.selected.contains(index)) {
                      value.remove(index);
                    } else {
                      value.add(index);
                    }
                  },
                  title: Text('Item $index'),
                  trailing: const Icon(Icons.favorite_border_outlined),
                );
              });
            },
          ),
        )
      ]),
    );
  }
}
