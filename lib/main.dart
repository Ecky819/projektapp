import 'package:flutter/material.dart';
import 'widgets/bottom_navigation.dart';
import 'widgets/custom_appbar_with_logo.dart';
// Ensure the following import is correct and the file exists
// If CustomBottomNavigationBar is defined elsewhere, adjust the import accordingly

void main() {
  runApp(const MyApp());
}

// MyApp ist jetzt ein StatefulWidget, um den ausgewählten Tab-Index zu verwalten.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex =
      0; // Der aktuell ausgewählte Index der BottomNavigationBar

  // Diese Funktion wird aufgerufen, wenn ein Icon in der BottomNavigationBar getippt wird.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        print('Home Icon getippt');
        // Navigieren zum Home-Bildschirm oder entsprechende Aktion
        break;
      case 1:
        print('Timeline Icon getippt');
        // Navigieren zur Timeline oder entsprechende Aktion
        break;
      case 2:
        print('Map Icon getippt');
        // Navigieren zur Karte oder entsprechende Aktion
        break;
      case 3:
        print('Favorite Icon getippt');
        // Navigieren zu den Favoriten oder entsprechende Aktion
        break;
      case 4:
        print('Settings Icon getippt');
        // Navigieren zu den Einstellungen oder entsprechende Aktion
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(233, 229, 221, 1.0),
        appBar: CustomAppBarWithLogo(context: context),
        endDrawer: const CustomDrawer(),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 215),
                  child: Column(
                    children: [
                      Card(
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
                      ),
                      Card(
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
                                  'assets/images/thessaloniki_home.jpg',
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                '80 Jahre Kriegsende in Thessalonikki',
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
                                    print('More info for Thessaloniki tapped!');
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
                          ],
                        ),
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
                      child: Card(
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
                                'TIMELINE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SFPro',
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
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
                                  child: Image.asset(
                                    'assets/icons/more_info.png',
                                    width: 76,
                                    height: 26,
                                  ),
                                ),
                              ),
                            ], // Children der Column
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 167,
                      child: Card(
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
                                'KARTE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'SFPro',
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  'Hier finden sie unsere interaktive Karte auf der alle Lagerstandorte verzeichnet sind.',
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
                                    print('More info for Karte tapped!');
                                    // Hier können Sie Navigationslogik oder andere Aktionen hinzufügen
                                  },
                                  child: Image.asset(
                                    'assets/icons/more_info.png',
                                    width: 76,
                                    height: 26,
                                  ),
                                ),
                              ),
                            ], // Children des Column
                          ),
                        ),
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
