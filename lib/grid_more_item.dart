import 'package:flutter/material.dart';

class GridMoreItem extends StatelessWidget {
  const GridMoreItem({
    Key? key,
    required this.title,
    required this.color,
    required this.press,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
