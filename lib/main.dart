import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/downloads/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch:  Colors.green,
        scaffoldBackgroundColor: backGroundColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color:Colors.white),
          bodyText2: TextStyle(color:Colors.white),
        )
        
      
        
      ),
      home:  ScreenMainPage(),
    );
  }
}




