import 'package:firebase_app/LoginView.dart';
import 'package:firebase_app/RegisterView.dart';
import 'package:firebase_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterView(),
      routes: {
        LoginViewRoute: (context) => const LoginView(),
        RegisterViewRoute: (context) => const RegisterView(),
      },
    ),
  );
}
