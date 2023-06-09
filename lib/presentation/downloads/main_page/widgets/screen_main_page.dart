import 'package:flutter/material.dart';

import 'package:netflix_app/presentation/downloads/main_page/widgets/screendownloads.dart';
import 'package:netflix_app/presentation/downloads/new%20&%20hot/screen_news.dart';
import 'package:netflix_app/presentation/search/screen_search.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';

import '../../widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [ScreenHome(), ScreenSearch(),ScreenNews(), ScreenDownload()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: ValueListenableBuilder(
          valueListenable: indexchangenotifer,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
    ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
