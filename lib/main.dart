import 'dart:ffi';

import 'package:first_flutter_app/pages/home.dart';
import 'package:first_flutter_app/pages/profile.dart';
import 'package:first_flutter_app/pages/search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _globalKey.currentState?.openDrawer();
            }),
        title: const Text('HomeScreen'),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() => _selectedIndex = value),
        selectedItemColor: Color.fromARGB(250, 100, 220, 100),
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Color.fromARGB(250, 100, 220, 100),
              ),
              label: "Home",
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 100, 220, 100),
              ),
              label: "Search",
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 100, 220, 100),
            ),
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
