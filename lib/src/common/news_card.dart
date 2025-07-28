import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback navigateToNews;

  const NewsCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.navigateToNews,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(243, 239, 231, 1.0),
      elevation: 10,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imagePath, width: 180, fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
              child: InkWell(
                onTap: navigateToNews,
                child: Image.asset(
                  'assets/icons/more_info.png',
                  width: 76,
                  height: 26,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
