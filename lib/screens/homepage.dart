import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.account_circle),
    Icon(Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Welcome to Shoppie')));
  }
}
