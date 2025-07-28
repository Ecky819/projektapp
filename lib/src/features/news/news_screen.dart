import 'package:flutter/material.dart';
// Import the new data_news.dart widget
import '../../data/data_news.dart'; // Adjust the path as needed

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News')),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: DataNewsWidget(), // Use the extracted widget here
        ),
      ),
    );
  }
}
