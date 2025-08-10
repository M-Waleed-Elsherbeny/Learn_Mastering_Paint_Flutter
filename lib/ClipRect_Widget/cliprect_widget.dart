import 'dart:developer';

import 'package:flutter/material.dart';

class ClipRectWidget extends StatefulWidget {
  const ClipRectWidget({super.key});

  @override
  State<ClipRectWidget> createState() => _ClipRectWidgetState();
}

class _ClipRectWidgetState extends State<ClipRectWidget> {
  Size newSize = Size(600, 600);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            clipBehavior: Clip.hardEdge,
            clipper: MyClipper(newSize),
            child: Container(
              color: Colors.redAccent,
              child: FlutterLogo(size: 600),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              newSize = Size(300, 300);
              setState(() {});
            },
            child: Text("Clip Logo"),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  final Size newSize;
  MyClipper(this.newSize);
  @override
  Rect getClip(Size size) {
    log(size.toString());
    return Rect.fromLTWH(
      0,
      0,
      newSize.width / 2,
      newSize.height / 2,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
