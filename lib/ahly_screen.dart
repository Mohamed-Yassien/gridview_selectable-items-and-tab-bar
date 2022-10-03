import 'package:flutter/material.dart';

class AhlyScreen extends StatelessWidget {
  const AhlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Al Ahly',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Center(
        child: Text(
          'Ahlawy',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
