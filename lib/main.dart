import 'package:flutter/material.dart';
import 'package:umer12/bottom.dart';
import 'package:umer12/call_screen.dart';
import 'package:umer12/calls_details.dart';
import 'package:umer12/communitiy.dart';
import 'package:umer12/home.dart';
import 'package:umer12/image.dart';
import 'package:umer12/mainscreen.dart';
import 'package:umer12/message.dart';
import 'package:umer12/resuable.dart';
import 'package:umer12/splashscreen.dart';
import 'package:umer12/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Splashscreen(),
    );
  }
}
