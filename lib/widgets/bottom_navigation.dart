import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: const Color.fromRGBO(40, 58, 73, 1.0),
      selectedItemColor: const Color.fromRGBO(131, 132, 140, 1.0),
      unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
      iconSize: 35,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/home_icon.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/timeline_icon.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/map_icon.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/favorite_icon.png')),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/icons/settings_icon.png')),
          label: '',
        ),
      ],
    );
  }
}
