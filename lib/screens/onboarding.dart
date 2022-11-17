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
        )),
        child: Positioned(
            bottom: 20,
            child: Container(
              height: 30,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Skip >>',
                          style: TextStyle(color: greyColor, fontSize: 8)),
                    ],
                  ),
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
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text('Next'),
                    ),
                  ),
                ],
              ),
            )),
      ),
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/onboard/2.jpg'),
        )),
        child: Positioned(
            bottom: 20,
            child: Container(
              height: 30,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Skip >>',
                          style: TextStyle(color: greyColor, fontSize: 8)),
                    ],
                  ),
                  const Text(
                    'Look Good, Feel Good',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: textColor),
                  ),
                  const Spacer(),
                  const Text(
                    'Anti-aging treatement, give your face the best it deserves ',
                    style: TextStyle(color: greyColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text('Next'),
                    ),
                  ),
                ],
              ),
            )),
      ),
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/onboard/3.jpg'),
        )),
        child: Positioned(
            bottom: 20,
            child: Container(
              height: 30,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Skip >>',
                          style: TextStyle(color: greyColor, fontSize: 8)),
                    ],
                  ),
                  const Text(
                    'Found Outfits, Find Match',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: textColor),
                  ),
                  const Spacer(),
                  const Text(
                    'Not sure about the outfit? Don\'t worry! Find the best outfits here.  ',
                    style: TextStyle(color: greyColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text('Let\'s go shopping'),
                    ),
                  ),
                ],
              ),
            )),
      ),
    ]));
  }
}
