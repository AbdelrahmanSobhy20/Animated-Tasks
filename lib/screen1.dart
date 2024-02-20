import 'package:flutter/material.dart';

import 'home.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 3),
          child: GestureDetector(child: const FlutterLogo(size: 100), onTap: (){
            setState(() {
              opacity =1;
            });
          },),
          onEnd:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Home()));
          } ,
        ),
      ),
    );
  }
}
