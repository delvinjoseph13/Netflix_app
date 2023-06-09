//import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constands.dart';

import '../../../widgets/app_bar_widget.dart';

final _widgetList = [const _smartDownloads(), section2(), const section3()];

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: 'Downloads'),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(20),
          itemBuilder: (ctx,index)=>_widgetList[index], 
          separatorBuilder: (ctx,index)=>SizedBox(height: 20,),
           itemCount: _widgetList.length)
        );
  }
}

class section2 extends StatelessWidget {
  section2({super.key});

  final List imageList = [
    "https://wallpapercave.com/wp/wp11157463.jpg",
    "https://cdn.marvel.com/content/2x/MLou2_Payoff_1-Sht_Online_DOM_v7_Sm.jpg",
    "https://static.displate.com/280x392/displate/2020-06-28/2b12e04e6c2f71b5ef4ff0f4ae28521c_62da5b91610e065fb97dab66faa0fab1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text('Introducing Downloads For You',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        kheight,
        Text(
          "we will download a personalised selection of\nmovies and shows for you,so there is always\nsowthing to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: Colors.grey,
              ),
              DownloadImageWidget(
                  imageList: imageList[0],
                  angle: 20,
                  Margin: EdgeInsets.only(left: 150, bottom: 50),
                  size: Size(size.width * 0.5, size.width * 0.6)),
              DownloadImageWidget(
                  imageList: imageList[1],
                  angle: -20,
                  Margin: EdgeInsets.only(right: 150, bottom: 50),
                  size: Size(size.width * 0.5, size.width * 0.6)),
              DownloadImageWidget(
                  imageList: imageList[2],
                  Margin: EdgeInsets.only(bottom: 10),
                  size: Size(size.width * 0.4, size.width * 0.7)),
            ],
          ),
        ),
      ],
    );
  }
}

class section3 extends StatelessWidget {
  const section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child:
           MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "set up",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            color: Colors.blue,
          ),
        ),
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "See what you can download",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          color: Colors.white,
        )
      ],
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        SizedBox(width: 20),
        Text(
          'Smart Downloads',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.Margin,
      required this.size});

  final String imageList;
  final double angle;
  final EdgeInsets Margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: Margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageList,
                ))),
      ),
    );
  }
}
