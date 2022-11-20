import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  final String label;

  final String detailsPath;

  const RootScreen({Key? key, required this.label, required this.detailsPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab root - $label')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Screen $label',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(
                onPressed: () => Beamer.of(context).beamToNamed(detailsPath),
                child: const Text('View details'))
          ],
        ),
      ),
    );
  }
}
