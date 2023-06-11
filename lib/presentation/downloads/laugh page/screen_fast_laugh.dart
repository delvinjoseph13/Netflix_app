import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/downloads/laugh%20page/widgets/video_list_item.dart';

class screenFastlaugh extends StatelessWidget {
  const screenFastlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
            scrollDirection:Axis.vertical ,
        children: List.generate(20, (index) {
          return videolistitem(index: index);
        }),
      )),
    );
  }
}
