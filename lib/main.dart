import 'package:flutter/material.dart';

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
        
        //print('Home Icon getippt');
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(40, 58, 73, 1.0),
            iconTheme: const IconThemeData(
              color: Colors.white, // Hamburger in weiß
            ),
            elevation: 0,
            centerTitle: false,
            titleSpacing: 0,
            title: const Padding(
              padding: EdgeInsets.all(0.0),
              child: Image(
                image: AssetImage('assets/images/Logo.png'),
                height: 56,
              ),
            ),
          ),
        ),
        // Hier wird der EndDrawer hinzugefügt
        endDrawer: SizedBox(
          width: 300,
          height: 670,
          child: Drawer(
            backgroundColor: const Color.fromRGBO(243, 239, 231, 1.0),
            child: ListView(
              padding: EdgeInsets.zero, // Entfernt den Standard-Padding
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(40, 58, 73, 1.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage(
                          'assets/images/default_avatar.jpg',
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'john.doe@example.com',
                        style: TextStyle(
                          fontFamily: 'SF Pro',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                            40,
                            58,
                            73,
                            1.0,
                          ),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: const Icon(Icons.home_outlined),
                        label: const Text(
                          'Home',
                          style: TextStyle(fontFamily: 'SF Pro'),
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Schließt den Drawer
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Home ausgewählt')),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                            40,
                            58,
                            73,
                            1.0,
                          ),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: const Icon(Icons.settings_outlined),
                        label: const Text('Datenbank'),
                        onPressed: () {
                          // Aktion beim Tippen auf 'Informationen'
                          Navigator.pop(context); // Schließt den Drawer
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Datenbank ausgewählt'),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                            40,
                            58,
                            73,
                            1.0,
                          ),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: const ImageIcon(
                          AssetImage('assets/icons/timeline_icon.png'),
                        ),
                        label: const Text('Timeline'),
                        onPressed: () {
                          // Aktion beim Tippen auf 'Informationen'
                          Navigator.pop(context); // Schließt den Drawer
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Timeline ausgewählt'),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                            40,
                            58,
                            73,
                            1.0,
                          ),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: const Icon(Icons.map_outlined),
                        label: const Text('Karte'),
                        onPressed: () {
                          // Aktion beim Tippen auf 'Informationen'
                          Navigator.pop(context); // Schließt den Drawer
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Karte ausgewählt')),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                            40,
                            58,
                            73,
                            1.0,
                          ),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ), // End of styleFrom
                        icon: const Icon(Icons.favorite_outline),
                        label: const Text('Favoriten'),
                        onPressed: () {
                          // Aktion beim Tippen auf 'Informationen'
                          Navigator.pop(context); // Schließt den Drawer
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Favoriten ausgewählt'),
                            ),
                          ); // End of ScaffoldMessenger
                        }, // End of onPressed
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(
                            40,
                            58,
                            73,
                            1.0,
                          ),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        icon: const Icon(Icons.person_2_outlined),
                        label: const Text('Profil'),
                        onPressed: () {
                          // Aktion beim Tippen auf 'Informationen'
                          Navigator.pop(context); // Schließt den Drawer
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Profil ausgewählt')),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: const Color.fromRGBO(40, 58, 73, 1.0),
          selectedItemColor: const Color.fromRGBO(131, 132, 140, 1.0),
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          iconSize: 35,
          currentIndex: _selectedIndex, // Setzt den aktuell ausgewählten Index
          onTap: _onItemTapped, // Fügt die onTap-Funktion hinzu
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/home_icon.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/timeline_icon.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/map_icon.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/favorite_icon.png')),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/settings_icon.png')),
              label: '',
            ),
          ], // Items
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
