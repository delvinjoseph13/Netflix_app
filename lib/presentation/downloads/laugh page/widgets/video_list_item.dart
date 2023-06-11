import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class videolistitem extends StatelessWidget {
  final int index;
  const videolistitem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),

                //left
                child: CircleAvatar(
                    radius: 30,
                    child:
                     IconButton(
                        onPressed: () {}, icon:const Icon(Icons.volume_mute,color: Colors.white,size: 35,)
                        ),backgroundColor: Colors.black.withOpacity(0.5),
                        ),
              ),

              //right

           const   Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                   radius: 30,
                    backgroundImage: NetworkImage("https://cdn.marvel.com/content/2x/MLou2_Payoff_1-Sht_Online_DOM_v7_Sm.jpg"
                    ),
                  ),
                  listoficons(icon: Icons.emoji_emotions, title: 'LOL'),
                   listoficons(icon: Icons.add, title: 'My List'),
                    listoficons(icon: Icons.share, title: 'Share'),
                     listoficons(icon: Icons.play_arrow, title: 'play'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class listoficons extends StatelessWidget {
  final IconData icon;

  final String title;
  const listoficons({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        
        children: [Icon(icon,size: 30,color: Colors.white,), Text(title,style: TextStyle(fontSize: 16),)],
      ),
    );
  }
}
