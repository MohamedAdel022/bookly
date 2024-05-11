import 'package:flutter/material.dart';

class SplasViewhBody extends StatelessWidget {
  const SplasViewhBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          SizedBox(height: 20),
          Text('Loading...'),
        ]);
  }
}
