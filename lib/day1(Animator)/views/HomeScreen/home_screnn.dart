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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Draggable(
                data: 'Aayush',
                child: Container(
                alignment: Alignment.center,
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Text('Aayush'),
                ),
                feedback: Material(
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.redAccent),
                    child: Text('Aayush'),
                  ),
                ),
              ),
              Spacer(),
              DragTarget(
                
                onAcceptWithDetails: (details) {
                  if(details.data == 'Aayush')
                    {
                      color = Colors.cyan;
                    }
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(color: color),
                    child: Text('Coding'),
                  );
                },
              )
            ],
          ),
        ));
  }
}


Color color = Colors.purpleAccent;