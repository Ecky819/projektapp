import 'package:flutter/material.dart';
import 'widgets/main_navigation.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '#PROJEKT UNBARMHERZIGKEIT',
      theme: AppTheme.lightTheme, // Hier dein separates Theme einbinden
      home: const MainNavigation(),
    );
  }
}
