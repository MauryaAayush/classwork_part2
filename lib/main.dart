import 'package:flutter/material.dart';

import 'Day2/views/homescreen.dart';
import 'day1(Animator)/views/HomeScreen/home_screnn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: HomeScreen1(),
    );
  }
}




// Notes :

// Animation :
// Need : Attractive UI
// 1. Implicit animation
// => Build in Animation : Pre-defined
// => Custom Animation


// 2. Explicit animation
// => Build in Animation
// => Custom Animation : According to user need


// Build in -> Easy to use , Custom Painter

// Hero widget : Build in widget : For Navigation purpose;

// when we use hero widget in navigation -> i seen like a Animation of opening