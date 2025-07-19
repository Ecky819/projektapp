import 'package:flutter/material.dart';
import 'widgets/bottom_navigation.dart';
import 'widgets/custom_appbar_with_logo.dart';
import 'widgets/home_screen.dart';
import 'widgets/timeline_screen.dart';
import 'widgets/map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const TimelineScreen(),
    const MapScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(233, 229, 221, 1.0),
        appBar: CustomAppBarWithLogo(context: context),
        endDrawer: const CustomDrawer(),
        body: _pages[_selectedIndex],
        bottomNavigationBar: CustomNavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
