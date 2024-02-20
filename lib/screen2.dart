import 'package:flutter/material.dart';

import 'home.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [AnimatedPositioned(
            duration: const Duration(seconds: 3),
            onEnd:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home()));
            } ,
            child: const FlutterLogo(size: 100),
          ),

          ]
        ),
      ),
    );
  }
}
