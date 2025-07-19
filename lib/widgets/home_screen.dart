import 'package:flutter/material.dart';
import 'news_card.dart';
import 'quicklink_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 215),
              child: Column(
                children: const [
                  NewsCard(
                    imagePath: 'assets/images/athen_home.jpg',
                    title: '80 Jahre Kriegsende in Athen',
                  ),
                  NewsCard(
                    title: '80 Jahre Kriegsende in Thessalonikki',
                    imagePath: 'assets/images/thessaloniki_home.jpg',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 167,
                  margin: const EdgeInsets.only(right: 16),
                  child: const QuicklinkCard(
                    title: 'TIMELINE',
                    text:
                        'Hier finden sie alle historischen Ereignisse in Griechenland von 1941 bis 1945.',
                    imagePath: 'assets/icons/more_info.png',
                  ),
                ),
                const SizedBox(
                  width: 167,
                  child: QuicklinkCard(
                    title: 'KARTE',
                    text:
                        'Hier finden sie unsere Karte auf der alle Lagerstandorte verzeichnet sind.',
                    imagePath: 'assets/icons/more_info.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
