import 'package:classwork_part2/Day2/views/detailed%20_screen.dart';
import 'package:flutter/material.dart';

// Draggable: Dragtarget
//
class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Image Animation'),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ));
            },
            child: Hero(
              tag: 'box',   // a unique key of widget
              child: SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.network(
                      fit: BoxFit.cover,
                      'https://cloudinary-marketing-res.cloudinary.com/images/w_1000,c_scale/v1679921049/Image_URL_header/Image_URL_header-png?_i=AA')),
            ),
          ),
        ));
  }
}
