import 'package:flutter/material.dart';
import 'package:nested_navigation_with_beamer_video/root_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Beamer Nested Navigation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RootScreen(
          label: 'A',
        ));
  }
}
