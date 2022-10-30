import 'package:flutter/material.dart'; 

class Onscreen extends StatefulWidget {
  const Onscreen({super.key});

  @override
  State<Onscreen> createState() => _OnscreenState();
}

class _OnscreenState extends State<Onscreen> {
  @override
  Widget build(BuildContext context) {
    return PageView();
  }
}