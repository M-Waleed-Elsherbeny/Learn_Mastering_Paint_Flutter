import 'dart:developer';

import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  const ClipRRectWidget({super.key});

  @override
  State<ClipRRectWidget> createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  Size newSize = Size(600, 600);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.redAccent,
            child: ClipRRect(
              // clipBehavior: Clip.none,
              clipper: MyClipper(),
              child: Image.asset("assets/images/sports.jpg"),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     newSize = Size(300, 300);
          //     setState(() {});
          //   },
          //   child: Text("Clip Logo"),
          // ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<RRect> {
  // final Size newSize;
  // MyClipper(this.newSize);

  @override
  RRect getClip(Size size) {
    log(size.toString());
    return RRect.fromLTRBXY(10, 50, size.width - 50, size.height - 50, 50, 150);
    // return RRect.fromLTRBAndCorners(
    //   10,
    //   50,
    //   size.width - 50,
    //   size.height - 50,
    //   topLeft: Radius.circular(100),
    //   topRight: Radius.circular(50),
    //   bottomLeft: Radius.circular(100),
    //   bottomRight: Radius.circular(50),
    // );
    // return RRect.fromLTRBR(
    //   10,
    //   0,
    //   size.width / 2,
    //   size.width,
    //   Radius.circular(10),
    // );
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    return true;
  }
}
