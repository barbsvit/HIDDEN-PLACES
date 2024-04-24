import 'package:flutter/material.dart';
import 'package:hidden_places/feed.dart';
void main() {
  // ignore: prefer_const_constructors
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MeuApp(),
    );
  }
}