import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constands.dart';
import 'package:netflix_app/presentation/search/widgets/screen_idle.dart';
import 'package:netflix_app/presentation/search/widgets/screen_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child:Padding(
          
          padding: const EdgeInsets.all(10.0),
          child: Column(
          
            
            children: [CupertinoSearchTextField(
          backgroundColor: Colors.grey.withOpacity(0.4),
          prefixIcon:const Icon(CupertinoIcons.search,color: Colors.grey,),
          suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,color: Colors.grey,),
          style: TextStyle(color: Colors.white),
              ),
              kheight,
           //  const Expanded(child: screenIdle())
           const Expanded(child:searchresultwidget())
              ],
              
            
              
              ),
        ) 
        ),
        
    );
  }
}