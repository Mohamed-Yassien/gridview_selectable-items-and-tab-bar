import 'package:flutter/material.dart';

class ReusableGridItem extends StatelessWidget {
  const ReusableGridItem({
    Key? key,
    required this.color,
    required this.press,
  }) : super(key: key);

  final Color color;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: color,
      ),
    );
  }
}
