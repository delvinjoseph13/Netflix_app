import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        const SizedBox(width: 30)
      ],
    );
  }
}
