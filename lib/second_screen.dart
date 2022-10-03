import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'text from item $itemIndex',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
