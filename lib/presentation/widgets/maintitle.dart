import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Maintitle extends StatelessWidget {
  final String title;
  const Maintitle({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        //the title changes because we use a final string title in screendownloads.dart
        title,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
