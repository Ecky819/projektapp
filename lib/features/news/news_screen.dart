import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Detail')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Hier stehen die ausführlichen Nachrichteninhalte.',
            style: TextStyle(fontSize: 16, fontFamily: 'SFPro'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
