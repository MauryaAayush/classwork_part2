import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

late AnimationController animationController;
GlobalKey<AnimatedListState> globalKey = GlobalKey();

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {

  void addData() {
    globalKey.currentState!.insertItem(0,duration: Duration(milliseconds: 500));
    data.insert(0, '${data.length} Data 1');
  }

  void removeData(int index){
    globalKey.currentState!.removeItem(index,(context, animation) {
      return SizeTransition(sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text(data[index]),
          trailing: IconButton(onPressed: () {
            removeData(index);
          }, icon: Icon(Icons.remove,color: Colors.red,)),
        ),
      ),);
    }, duration: Duration(milliseconds: 500));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 3000))
          ..repeat();

    // animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addData();
        },
        child: Icon(Icons.add),
      ),
      body: AnimatedList(
        key: globalKey,
        itemBuilder: (context, index, animation) {
         return SizeTransition(sizeFactor: animation,child: Card(
           color: Colors.green,
           child: ListTile(
             title: Text(data[index]),
             trailing: IconButton(onPressed: () {
               removeData(index);
             }, icon: Icon(Icons.delete,color: Colors.red,)),
           ),
         ),);
        },
      ),

//       body: Center(
//         // child: TweenAnimationBuilder(
//         //   tween: Tween<double>(
//         //     begin: 0,
//         //     end: 2 * pi,
//         //   ),
//         //   // tween: ColorTween(
//         //   //   begin: Colors.amber,
//         //   //   end: Colors.deepPurple,
//         //   // ),
//         //   child: Container(
//         //     height: 300,
//         //     width: 300,
//         //     decoration: BoxDecoration(
//         //         // color: Colors.teal
//         //         image: DecorationImage(
//         //       fit: BoxFit.contain,
//         //       image: AssetImage('assets/image/moon.png'),
//         //       // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxXnC3fwMwkbIt3ejGRIw3NmbDyUtgS5g2jA&s"),
//         //     )),
//         //   ),
//         //   duration: Duration(milliseconds: 3000),
//         //   builder: (context, value, child) {
//         //     return Transform.rotate(
//         //       angle: value,
//         //       child: child,
//         //     );
//         //
//         //     //   ColorFiltered(colorFilter: ColorFilter.mode(value!, BlendMode.modulate),
//         //     // child: child,);
//         //   },
//         // ),
//
//
//
// //         child: AnimatedBuilder(
// //           child: Container(
// //             height: 200,
// //             width: 200,
// //             decoration: BoxDecoration(
// // // color: Colors.teal
// //                 image: DecorationImage(
// //                   fit: BoxFit.contain,
// //                   image: AssetImage('assets/image/moon.png'),
// // // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxXnC3fwMwkbIt3ejGRIw3NmbDyUtgS5g2jA&s"),
// //                 )),
// //           ),
// //           animation: animationController,
// //           builder: (context, child) {
// //           return ListView.builder(itemBuilder: (context, index) {
// //             return RotationTransition(turns: animationController,child: child,);
// //           },);
// //         },),
//       ),
    );
  }
}

// Explicitly : AnimationBuilder

List data = [];
