import 'package:flutter/material.dart';

class LiverPollScreen extends StatelessWidget {
  const LiverPollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Liverpool',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body:  Center(
        child: Text(
          'LiverPoll',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
