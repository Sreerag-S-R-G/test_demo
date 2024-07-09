import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Themes Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Blue theme for HOME
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          },
          child: Text('Go to ABOUT'),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT'),
        backgroundColor: Colors.green, // Green theme for ABOUT AppBar
      ),
      body: Container(
        color: Colors.green.shade100, // Light green background for ABOUT page
        child: Center(
          child: Text(
            'This is the ABOUT page.',
            style: TextStyle(color: Colors.green.shade900), // Dark green text
          ),
        ),
      ),
    );
  }
}
