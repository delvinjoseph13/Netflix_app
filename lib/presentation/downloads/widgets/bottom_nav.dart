import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifer = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifer,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexchangenotifer.value = index;
            },
            backgroundColor: Colors.black,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.grey),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.games), label: 'games'),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.browse_gallery), label: 'new& hot'),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'download'),
            ]);
            
      },
      
    );
    
  }
}

