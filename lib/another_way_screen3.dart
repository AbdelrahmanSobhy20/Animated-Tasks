import 'package:flutter/material.dart';

class AnotherScreen3 extends StatefulWidget {
  const AnotherScreen3({Key? key}) : super(key: key);

  @override
  State<AnotherScreen3> createState() => _AnotherScreen3State();
}

class _AnotherScreen3State extends State<AnotherScreen3>
    with SingleTickerProviderStateMixin {
  late Animation<double> scaleAnimation;
  late Animation<double> rotationAnimation;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    );
    scaleAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);

    rotationAnimation = Tween(
      begin: 0.0,
      end: 6.0,
    ).animate(controller);
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ScaleTransition(
              scale: scaleAnimation,
              child: RotationTransition(
                turns: rotationAnimation,
                alignment: Alignment.center,
                child: const FlutterLogo(
                  size: 200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
