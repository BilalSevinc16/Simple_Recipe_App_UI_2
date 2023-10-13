import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color color;

  const Star({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      size: 15,
      color: color,
    );
  }
}
