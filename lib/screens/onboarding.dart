import 'package:flutter/material.dart';

class Onscreen extends StatefulWidget {
  const Onscreen({super.key});

  @override
  State<Onscreen> createState() => _OnscreenState();
}

class _OnscreenState extends State<Onscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 1',
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            )),
        Container(
            color: Colors.yellow,
            child: const Center(
              child: Text('Page 2',
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            )),
        Container(
            color: Colors.green,
            child: const Center(
              child: Text('Page 3',
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            )),
      ],
    ));
  }
}
