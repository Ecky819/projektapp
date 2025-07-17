import 'package:flutter/material.dart';
import '/widgets/bottom_navigation.dart';
import '/widgets/custom_appbar_with_headline.dart';

void main() => runApp(const TimeLinePage());

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({super.key});

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        print('Home Icon getippt');
        break;
      case 1:
        print('Timeline Icon getippt');
        break;
      case 2:
        print('Map Icon getippt');
        break;
      case 3:
        print('Favorite Icon getippt');
        break;
      case 4:
        print('Settings Icon getippt');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatenbankPage(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class DatenbankPage extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const DatenbankPage({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWithHeadline(title: 'Datenbank'),
      drawer: const CustomDrawer(),
      body: const Center(child: Text('Datenbank Inhalte')),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
