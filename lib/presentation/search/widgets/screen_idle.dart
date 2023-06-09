import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constands.dart';
import 'package:netflix_app/presentation/search/widgets/screen_text.dart';

const imageurl = 'https://static.displate.com/280x392/displate/2021-08-12/150200a26df6d3d4c32ca180b63ba52b_94e0c99492ed8edd2a90e5e84d2c0040.jpg';

class screenIdle extends StatelessWidget {
  const screenIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        screentext(title:'Top searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => screentopsearch(),
              separatorBuilder: (ctx, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}



class screentopsearch extends StatelessWidget {
  const screentopsearch({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        Expanded(child: Text('Dark')),
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 23,
              child: Icon(
                CupertinoIcons.play_fill,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
