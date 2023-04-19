import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementapp/provider/FavouriteProvider.dart';
import 'package:statemanagementapp/provider/SliderProvider.dart';
import 'package:statemanagementapp/provider/count_provider.dart';
import 'package:statemanagementapp/screens/ExpansionTile.dart';
import 'package:statemanagementapp/screens/FavouriteScreen.dart';
import 'package:statemanagementapp/screens/Opacity.dart';
import 'package:statemanagementapp/screens/SliderExample.dart';
import 'package:statemanagementapp/screens/StackWidgetExample.dart';
import 'package:statemanagementapp/screens/countExample.dart';
import 'package:statemanagementapp/screens/statefull_home.dart';
import 'package:statemanagementapp/screens/stateless_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => countProvider()),
        ChangeNotifierProvider(create: (_) => sliderProvider()),
        ChangeNotifierProvider(create: (_) => favouriteprovider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: stateFullExam(),
        //home: CountView(),
        //home: StackExample(),
        //home: ExpansioExample(),
        home: OpacityExample(),
      ),
    );
  }
}
