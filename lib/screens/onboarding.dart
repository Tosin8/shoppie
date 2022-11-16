import 'package:flutter/material.dart';

class Onscreen extends StatefulWidget {
  const Onscreen({super.key});

  @override
  State<Onscreen> createState() => _OnscreenState();
}

class _OnscreenState extends State<Onscreen> {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: [
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
        image: AssetImage('assets/images/onboard/1.jpg'),
      ))),
      Positioned(
          child: Container(
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: BorderRadius.circular(10),
                topRight: BorderRadius.circular(10))),
      )),
    ]));
  }
}
