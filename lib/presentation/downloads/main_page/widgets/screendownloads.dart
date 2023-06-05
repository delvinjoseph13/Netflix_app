//import 'dart:html';

import 'dart:math';

import 'package:flutter/material.dart';

import '../../../widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List imageList = [
    "https://wallpapercave.com/wp/wp11157463.jpg",
    "https://cdn.marvel.com/content/2x/MLou2_Payoff_1-Sht_Online_DOM_v7_Sm.jpg",
    "https://static.displate.com/280x392/displate/2020-06-28/2b12e04e6c2f71b5ef4ff0f4ae28521c_62da5b91610e065fb97dab66faa0fab1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: 'Downloads'),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                Text(
                  'Smart Downloads',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text('Introducing Downloads For You',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text("we'll dowload anything so that you can watch anythig"),
            Container(
              width: size.width,
              height: size.width,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(radius: size.width * 0.4),
                  DownloadImageWidget(
                      imageList: imageList[0],
                      angle: 20,
                      Margin: EdgeInsets.only(left: 150,bottom: 50),
                      size:Size(size.width *0.5,size.width*0.6)),
                     
                      
                  DownloadImageWidget(
                      imageList: imageList[1],
                      angle:-20,
                      Margin: EdgeInsets.only(right: 150,bottom: 50),
                     size:Size(size.width *0.5,size.width*0.6)), 
                  
                  DownloadImageWidget(
                      imageList: imageList[2],
                      Margin: EdgeInsets.only(top: 10),
                      size:Size(size.width *0.5,size.width*0.7)),
                      
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "set up",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "See what you can download",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              color: Colors.white,
            )
          ],
        ));
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
                image: NetworkImage(
              imageList,
            ))),
      ),
    );
  }
}
