import 'package:flutter/material.dart';
import 'package:netflix_app/core/constands.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return     Container(
    
      width: 200,
    
      height: 200,
    
      
    
    decoration: BoxDecoration(borderRadius: kborder,image: DecorationImage(image: NetworkImage("https://cdn.marvel.com/content/2x/MLou2_Payoff_1-Sht_Online_DOM_v7_Sm.jpg"))),
    
    );
  }
}