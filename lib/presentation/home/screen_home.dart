import 'package:flutter/material.dart';
import 'package:netflix_app/core/constands.dart';
import 'package:netflix_app/presentation/search/widgets/screen_result.dart';
import 'package:netflix_app/presentation/widgets/maincards.dart';
import 'package:netflix_app/presentation/widgets/maintitle.dart';
import 'package:netflix_app/presentation/widgets/maintitlecard.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (body:Column(
      children: [
        maintitlecard(title: "Prevoius Released movies",),
        maintitlecard(title: "Trending now",)
      ],
    )
    
    
    );
  }
}




