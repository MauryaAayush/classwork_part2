// Page Transition :
//

import 'package:classwork_part2/Day5/second_page.dart';
import 'package:flutter/material.dart';

class Pagetransitionscreen extends StatefulWidget {
  const Pagetransitionscreen({super.key});

  @override
  State<Pagetransitionscreen> createState() => _PagetransitionscreenState();
}

class _PagetransitionscreenState extends State<Pagetransitionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New task'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
            Navigator.of(context).push(changePage());
            },
            child: Text('Next')),
      ),
    );
  }
}

PageRouteBuilder changePage() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SecondPage(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      Animatable<Offset> animatable =
          Tween(begin: Offset(0.0, 1.0), end: Offset.zero)
              .chain(CurveTween(curve: Curves.ease));

      return SlideTransition(
        position: animatable.animate(animation),
        child: child,
      );
    },
  );
}
