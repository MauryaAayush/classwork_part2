import 'package:flutter/material.dart';




// Draggable: Dragtarget
// 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Match Game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Draggable(child: Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.teal
            ),
          ), feedback: Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),
          ))
        ],
      )
    );
  }
}
