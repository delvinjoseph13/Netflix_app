import 'package:flutter/material.dart';

class screentext extends StatelessWidget {
  final String title;
  const screentext({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
