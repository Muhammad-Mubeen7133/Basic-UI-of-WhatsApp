import 'package:flutter/material.dart';
import 'package:notes_book/Cloning%20UI/cloning_ui_main.dart';
import 'package:notes_book/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CloningUiMain(),
    );
  }
}
