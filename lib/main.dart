import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_with_beamer_video/scaffold_with_bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
      locationBuilder: RoutesLocationBuilder(routes: {
    '*': (context, state, data) => const ScaffoldWithBottomNavBar()
  }));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Beamer Nested Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
