import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/maincards.dart';
import 'package:netflix_app/presentation/widgets/maintitle.dart';

class maintitlecard extends StatelessWidget {
  final String title;
  const maintitlecard({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitle(
          title: title,
        ),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => const Maincard())),
        )
      ],
    );
  }
}
