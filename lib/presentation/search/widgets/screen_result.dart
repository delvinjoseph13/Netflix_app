import 'package:flutter/material.dart';
import 'package:netflix_app/core/constands.dart';
import 'package:netflix_app/presentation/search/widgets/screen_text.dart';

const imageUrl = 'https://static.displate.com/280x392/displate/2020-06-28/2b12e04e6c2f71b5ef4ff0f4ae28521c_62da5b91610e065fb97dab66faa0fab1.jpg';

class searchresultwidget extends StatelessWidget {
  const searchresultwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        screentext(title: 'Movies & tv'),
        kheight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 0,
            mainAxisSpacing: 9,
            childAspectRatio: 1/1,
            children: List.generate(20, (index) {
              return maincard();
            }),
          ),
        )
      ],
    );
  }
}

class maincard extends StatelessWidget {
  const maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(image:const DecorationImage(
            image: NetworkImage
          (imageUrl)
          ),
          borderRadius: BorderRadius.circular(10)
          ),
    );
  }
}
