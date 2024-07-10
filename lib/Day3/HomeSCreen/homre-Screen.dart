import 'package:classwork_part2/Day2/views/detailed%20_screen.dart';
import 'package:flutter/material.dart';

// Draggable: Dragtarget
//
class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

late AnimationController animationController;

class _HomeScreenState extends State<HomeScreen2>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image Animation'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if(isSelected) {
                animationController.forward();
                isSelected = false;
              }
                else{
                  animationController.reverse();
                  isSelected = true;
              }

            }
    );
          },
          child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              size: 50,
              progress: animationController),
        ),

        // child: GestureDetector(
        //   onTap: () {
        //
        //     setState(() {
        //       if(isSelected)
        //       {
        //         width = 200;
        //         borderRadius = BorderRadius.circular(20);
        //         color = Colors.cyan;
        //         buttonName = 'Done';
        //         alignment = Alignment.topRight;
        //         fontWeight = FontWeight.bold;
        //         scale = 2;
        //         isSelected = false;
        //       }else{
        //         width = 150;
        //         borderRadius = BorderRadius.circular(10);
        //         color = Colors.teal;
        //         scale = 1;
        //         fontWeight = FontWeight.normal;
        //         buttonName = 'Register';
        //         alignment = Alignment.bottomCenter;
        //         isSelected = true;
        //       }
        //     });
        //
        //   },
        //
        //
        //
        //   // child: AnimatedContainer(
        //   //   curve: Curves.bounceOut,
        //   //   duration: Duration(milliseconds: 1000),
        //   //   alignment: Alignment.center,
        //   //   height: 55,
        //   //   width: width,
        //   //   decoration: BoxDecoration(
        //   //     color: color,
        //   //         borderRadius: borderRadius,
        //   //   ),
        //
        //       // child:AnimatedScale(
        //       //   scale: scale,
        //       //   alignment: alignment,
        //       //   duration: Duration(seconds: 2),
        //       //   child: FlutterLogo(),
        //       )
        //     // child:AnimatedAlign(
        //     //     alignment: alignment,
        //     //     duration: Duration(seconds: 1),
        //     //   child: FlutterLogo(),
        //     // )
        //
        //     // AnimatedDefaultTextStyle(child: Text(buttonName,),
        //     //     style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: fontWeight),
        //     //     duration: Duration(milliseconds: 500))
      ),
    );
  }
}

double scale = 1;
Alignment alignment = Alignment.topLeft;
bool isSelected = false;
String buttonName = "Register";
double width = 150;
FontWeight fontWeight = FontWeight.normal;
Color color = Colors.teal;
BorderRadius borderRadius = BorderRadius.circular(10);

//Animated Default TextStyle
