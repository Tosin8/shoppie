import 'package:flutter/material.dart';

import '../widgets/constant.dart';

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
          bottom: 20,
          child: Container(
            height: 30,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: 12.0, topRight: 12.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Skip >>'),
                const Text(
                  'Your Style, Your Way',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: textColor),
                ),
                const Spacer(),
                const Text(
                  'Create your individual and unique style look amazing everyday. ',
                  style: TextStyle(color: greyColor),
                ),
                const Spacer(),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text('Next'),
                ),
              ],
            ),
          )),
    ]));
  }
}
