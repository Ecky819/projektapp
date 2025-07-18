import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const NewsCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(243, 239, 231, 1.0),
      elevation: 10,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                'assets/images/athen_home.jpg',
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text(
              '80 Jahre Kriegsende in Athen',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'SFPro',
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(4),
              // Wrap Image.asset with InkWell for tap functionality
              child: InkWell(
                onTap: () {
                  print('More info for Athen tapped!');
                  // Hier können Sie Navigationslogik oder andere Aktionen hinzufügen
                },
                child: Image.asset(
                  'assets/icons/more_info.png',
                  width: 76,
                  height: 26,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
        ], // Children of the Column
      ),
    );
  }
}
