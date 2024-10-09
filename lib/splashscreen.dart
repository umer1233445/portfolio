import 'dart:async';

import 'package:flutter/material.dart';
import 'package:umer12/mainscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(Duration(seconds: 2), () {
      
      Navigator.push(context, MaterialPageRoute(builder: (context) => Mainscreen(),));
      
    },);
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [

          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 180),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/img.png'),
                radius: 120,
              ),
            ),
          ),

        ],
      ),

    );
  }
}
