import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  dynamic props = {
    "width": 50.0,
    "height": 50.0,
  };
  void changeProps() {
    final random = Random();
    props["width"] = random.nextInt(350) + 25.0;
    props["height"] = random.nextInt(350) + 25.0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticOut,
          width: props["width"],
          height: props["height"],
          color: Color.fromRGBO(0, 255, 255, 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeProps,
        child: Icon(Icons.verified),
      ),
    );
  }
}
