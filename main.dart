import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: WebLayout(),
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sidebar
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blueGrey[800],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Sidebar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Divider(color: Colors.white),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text('Home', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.white),
                  title: Text('Profile', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.white),
                  title:
                      Text('Settings', style: TextStyle(color: Colors.white)),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        // Content area
        Expanded(
          flex: 3,
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue[700],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Header',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.notifications, color: Colors.white),
                  ],
                ),
              ),
              // Main Content
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      'Main Content Area',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
