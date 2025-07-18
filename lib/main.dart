import 'package:flutter/material.dart';
import 'widgets/bottom_navigation.dart';
import 'widgets/custom_appbar_with_logo.dart';
import 'widgets/news_card.dart';
import 'widgets/quicklink_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex =
      0; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(233, 229, 221, 1.0),
        appBar: CustomAppBarWithLogo(context: context),
        endDrawer: const CustomDrawer(),
        body: Center(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 215),
                  child: Column(
                    children: [
                      NewsCard(
                        imagePath: 'assets/images/athen_home.jpg',
                        title: '80 Jahre Kriegsende in Athen',
                      ),
                      NewsCard(
                        title: '80 Jahre Kriegsende in Thessalonikki',
                        imagePath: 'assets/images/thessaloniki_home.jpg',
                      ),
                    ], // Ende der Column
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 167,
                      margin: EdgeInsets.only(right: 16),
                      child: QuicklinkCard(
                        text: 'TIMELINE',
                        imagePath: 'assets/icons/more_info.png',
                      ),
                    ),
                    SizedBox(
                      width: 167,
                      child: QuicklinkCard(
                        text: 'TIMELINE',
                        imagePath: 'assets/icons/more_info.png',
                      ),
                    ),
                  ],
                ),
              ),
            ], // Children des Body
          ),
        ),
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
