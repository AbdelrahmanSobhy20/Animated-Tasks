import 'package:animated_tasks/home1.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  double turns = 0;
  double h = 10;
  double w = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          turns: turns,
          duration: const Duration(seconds: 3),
          child: GestureDetector(
            child: AnimatedContainer(
                height: h,
                width: w,
                duration: const Duration(seconds: 3),
                child: const FlutterLogo()),
            onTap: () {
              setState(() {
                turns = 5;
                h = 200;
                w = 200;
              });
            },
          ),
          onEnd: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Home1()));
          },
        ),
      ),
    );
  }
}

// late AnimationController _controller;
// late Animation _animation;
//
// @override
// void initState() {
//   super.initState();
//   _controller = AnimationController(vsync: this , duration: const Duration(seconds: 2));
//   _animation = Tween(begin: 0,end:8.0).animate(_controller)..addStatusListener((stste) {
//     print(stste);
//   })..addListener(() {
//     setState(() {
//
//     });
//     print("value ${_animation.value}");
//   });
//   _controller..forward();
// }
