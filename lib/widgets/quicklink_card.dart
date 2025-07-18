import 'package:flutter/material.dart';

class QuicklinkCard extends StatelessWidget {
  final String text;
  final String imagePath;

  const QuicklinkCard({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(243, 239, 231, 1.0),
      elevation: 10,
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'SFPro',
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Hier finden sie alle historischen Ereignisse in Griechenland von 1941 bis 1945.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(84, 95, 113, 1.0),
                  fontFamily: 'SFPro',
                ),
              ),
            ),
            const SizedBox(height: 8),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(4),
              // Wrap Image.asset with InkWell for tap functionality
              child: InkWell(
                onTap: () {
                  print('More info for Timeline tapped!');
                  // Hier können Sie Navigationslogik oder andere Aktionen hinzufügen
                },
                child: Image.asset(imagePath, width: 76, height: 26),
              ),
            ),
          ], // Children der Column
        ),
      ),
    );
  }
}
